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
ayoo
