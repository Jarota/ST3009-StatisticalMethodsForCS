# Week 5 Questions

Q1  
a) The chance that the second marble drawn is the same as the first is 4/9.
$$E[X] = x_1P(X=x_1) + x_2P(X=x_2)$$
$$1.1 * \frac49 + (-1) * \frac59 = 0.4889 - 0.5556 = -0.0667$$
b) Using the formula for variance:
$$Var(X)=\sum_{i=1}^{n}(x_i-\mu)^2p(x_i)$$
$$(1.1-(-0.0667))^2 * \frac49 + (-1-(-0.0667))^2 * \frac59$$
$$0.60497284 + 0.48391605 = 1.0889$$

Q2  
a)
$$E[X_i] = 1 * 0.6 + 0 * 0.4=0.6$$
b)
$$Var(X_i) = (1-0.6)^2 * 0.6 + (0-0.6)^2 * 0.4$$
$$Var(X_i) = 0.096 + 0.144 = 0.24$$
c) $E[Y]$ is the overall expected number of people who voted, out of the n who took part in the poll, $n * E[X] = 0.6n$.  
$E[X] = E[X_i]$ for all i, because people were sampled independently, hence $E[Y] \ne E[X], 0.6n \ne 0.6$ ie they are not the same.  

d) E[$\frac1nY] = E[\frac1n\sum_{i=1}^{n}X_i] = E[X] = 0.6$    

e)
$$Var(\frac{1}{n}Y) = \frac{1}{n^2}Var(Y) = \frac{1}{n^2}Var(\sum_{i=1}^{n}X_i)$$
$$Var(\sum_{i=1}^{n}X_i) = \sum_{i=1}^{n}Var(X_i) = nVar(X)$$
$$\therefore Var(\frac{1}{n}Y) = \frac{1}{n}Var(X)$$

Q3  
a) 5 + 8 = 13 balls total (for $X_1$, 12 for $X_2$).
 JPMF  | x=0  | x=1  | P(X2=y)
  ---- | ---  | ---  | ----
  y=0  |14/39 |10/39 | 24/39
  y=1  |10/39 |5/39  | 15/39
P(X1=x)|8/13  |5/13  |  1
b) No, they are not independent.
$$P(X_1 \cap X_2) \ne P(X_1) * P(X_2)$$
$$\frac{5}{13} * \frac{15}{39} = 0.1479 \ne 0.1282 = \frac{5}{39}$$
c)
$$E[X_2] = 1 * \frac{15}{39} + 0 * \frac{24}{39} = \frac{15}{39}$$
d)
$$$$
