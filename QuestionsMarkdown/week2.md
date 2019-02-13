# Week 2 Questions

Q1  
a) There are 6x6x6 elements in the sample space, because each roll of the die can land on any of the 6 sides. 6x6x6 = **216**  
b) There is one outcome where they are all twos. There are (1x5x5)x3 possible outcomes for one two being rolled and there are (1x1x5)x3 possible outcomes for two twos. Therefore there are 1+75+15 = 91 outcomes containing *at least one* two. So the probability is 91/216 = **0.42**  
c)

	count = 0;

	for i = 1:100000

	    threeRolls = randi(6, 3, 1);
	    if ismember(2, threeRolls)
	        count = count + 1;
	    end;

	end;

	result = count / 100000;
	disp(result);

d) There must be two sixes and a five for the sum to be 17, therefore there is only one possible outcome. 1/216 = **0.0046**  
e) The number of possibilities that the first roll is a one is 1x6x6 = 36. For the sum to be 12, the next two rolls must be either (5,6) or (6,5). 2/36 = **0.055**

Q2  
a) E is the second roll is a 5. F1 is the first roll is a 1 and F2 is the first roll is not a one. P(E) = (1/6 x 1/6) + (5/6 x 1/20) = **0.069**  
b) E is now the second roll is a 15. P(E) = (1/6 x 0/6) + (5/6 x 1/20) = **0.042**

Q3  
P(G) is the probability that suspect is guilty, P(C) is the probability that the suspect has the characteristic. Using Bayes Theorem, the probability that the suspect is guilty, given they have the characteristic, is P(G|C) = P(C|G) x P(G) / P(C). P(C|G) is 1, because we know the criminal has this characteristic. We can use marginalization to find P(C) -> P(C|G) x P(G) + P(C|G') x P(G'). P(G') = 1 - P(G) = 0.4. P(C) = 1 x 0.6 + 0.2 x 0.4 = 0.68. Therefore, P(G|C) = 0.6/0.68 = **0.882**

Q4  
We use Bayes Theorem again. P(O) is the probability of observing two bars of signal, and P(L) is the probability of being in location L. P(L|O) = P(O|L) x P(L) / P(O). We use marginalization to find P(O) -> P(O|L1)P(L1) + P(O|L2)P(L2) + P(O|L3)P(L3) + ... + P(O|L16)P(L16). 0.05x0.75 + 0.1x0.95 + 0.05x0.75 + 0.05x0.05 + 0.05x0.05 + 0.1x0.75 + 0.05x0.95 + 0.05x0.75 + 0.05x0.01 + 0.05x0.05 + 0.1x0.75 + 0.05x0.95 + 0.05x0.01 + 0.05x0.01 + 0.1x0.05 + 0.05x0.75 = P(O) = 0.504.  
P(L1|O) = 0.05 x 0.75 / 0.504 = **0.0744**  
P(L2|O) = 0.1 x 0.95 / 0.504 = **0.1885**  
P(L3|O) = 0.05 x 0.75 / 0.504 = **0.0744**  
P(L4|O) = 0.05 x 0.05 / 0.504 = **0.00496**  
P(L5|O) = 0.05 x 0.05 / 0.504 = **0.00496**  
P(L6|O) = 0.1 x 0.75 / 0.504 = **0.1488**  
P(L7|O) = 0.05 x 0.95 / 0.504 = **0.0942**  
P(L8|O) = 0.05 x 0.75 / 0.504 = **0.0744**  
P(L9|O) = 0.05 x 0.01 / 0.504 = **0.00099**  
P(L10|O) = 0.05 x 0.05 / 0.504 = **0.00496**  
P(L11|O) = 0.1 x 0.75 / 0.504 = **0.1488**  
P(L12|O) = 0.05 x 0.95 / 0.504 = **0.0942**  
P(L13|O) = 0.05 x 0.01 / 0.504 = **0.00099**  
P(L14|O) = 0.05 x 0.01 / 0.504 = **0.00099**  
P(L15|O) = 0.1 x 0.05 / 0.504 = **0.0099**  
P(L16|O) = 0.05 x 0.75 / 0.504 = **0.0744**  


	priors = [
	    0.05, 0.1, 0.05, 0.05;
	    0.05, 0.1, 0.05, 0.05;
	    0.05, 0.05, 0.1, 0.05;
	    0.05, 0.05, 0.1, 0.05
	];

	likelihoods = [
	    0.75, 0.95, 0.75, 0.05;
	    0.05, 0.75, 0.95, 0.75;
	    0.01, 0.05, 0.75, 0.95;
	    0.01, 0.01, 0.05, 0.75
	];

	evidence = 0;

	for i = 1:16
	    temp = priors(i) * likelihoods(i);
	    evidence = evidence + temp;
	end

	posteriors = zeros(4,4);

	for i = 1:16
	    posteriors(i) = priors(i) * likelihoods(i) / evidence;
	end

	disp(posteriors)

I start by declaring the two matrices *priors* and *likelihoods*, then iterate over them in order to calculate the *evidence*. Then I just declare the posteriors matrix as a 4x4 of zeros, and again iterate through, storing each result in the respective spot. It could probably be more efficient if I stored the result of priors(i) * likelihoods(i), rather than calculating it twice, but the way I have it seems easier to read for me.
