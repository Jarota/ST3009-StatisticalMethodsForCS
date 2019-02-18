# Week 3 Questions

Q1  
a) There are 6x6x6x6x6x6 or 6^6 possible outcomes. The sequence '112233' is just one of these outcomes, so the chances of it being rolled is 1/46656 = **0.000021433**  
b) If four of the rolls are a 3, the remaining two rolls can be 5x5 = 25 different combinations. These can be in 15 different permutations -> 6!/(4!2!). 25x15 = 375 possible outcomes where there are exactly four 3s. 375/46656 = **0.008**  
c) Much like the last question, if a single 1 is rolled, the remaining five rolls can be any of 5^5 = 3125 combinations. These can be in any of 6 choose 1 permutations. So we have 3125x6 = 18750 outcomes where there is a single 1. 18750/46656 = **0.4019**  
d) The number of possible outcomes with no 1s is 5^6 = 15625. That means number of outcomes with one or more 1s is 46656-15625 = 31031. 31031/46656 = **0.6651**

Q2  
A and B are *not* independent. There are 6x20 = 120 possible outcomes. 20 of these are A, therefore P(A) = 20/120 = 0.1667. 1 of these outcomes are B, so P(B) = 1/120 = 0.0083. P(A $\cap$ B) = 1/120 as well, so clearly P(A)xP(B) does not equal P(A $\cap$ B).

Q3  
a) On the kth try, the probability will be $\frac{1}{n-k+1}$, but to calculate the probability that it was *exactly* this try, we multiply be all the probabilities that the previous tries were *not* successful: $\frac{n-1}{n}$ x $\frac{n-2}{n-1}$ if the first two tries were not successful, etc.  
b) 5/6 x 4/5 x 1/4 = **0.1667**  
c) This is similar to part a, but because incorrect passwords are not deleted, we don't decrement the denominator for each try: $\frac{1}{n}$, multiplied by $\frac{n-1}{n}$, k-1 times.  
d) 5/6 x 5/6 x 1/6 = **0.1157**

Q4
a) The easiest way to calculate this is to find the probability that the robot *isn't* flagged. 0.3 x 0.3 x 0.3 = 0.027 -> 1-0.027 = **0.973**  
b) Again, we find the probability that the human is not flagged (passes every captcha) -> 0.95 x 0.95 x 0.95 = 0.857375 -> 1-0.857375 = **0.142625**  
c) Using Bayes Rule, with probability of a robot $P(R) = 0.1$, and the probability of getting flagged $P(F) = P(F|R)P(R)+P(F|R')P(R')$, which is $0.973*0.1+0.142625*0.9=0.2256625$.  

$P(R|F)=\frac{P(F|R)P(R)}{P(F)}=\frac{0.973*0.1}{0.2256625}=0.43117$
