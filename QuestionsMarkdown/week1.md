# Week 1 Questions

Q1  
a) If each letter appears once then the 1st can be any of the 10, then for the next letter there are only 9 remaining options, then 8, and so on.. 10! = **3628800**  
b) If the letters E and F must be next to each other, then there are 8! combinations for when they are the first two letters -> EF\*\*\*\*\*\*\*\*. The pair can be in 9 different positions, and they can be the other way round (FE), which means 9x2x8! = **725760**  
c) There are 6! ways of arranging the letters of BANANA. However, they are not all different ie B A N1 A N2 A and B A N2 A N1 A are both counted. Similarly for the three different As, so we divide by (3! x 2!) -> the different combinations of the 3 Ns and 2 As, to get **60**  
d) The first of the three letters drawn can be any of the 5, the next can be one of the 4 remaining letters, and the last can be one of 3. Due to the fact each group of three letters can be arranged in 3! different ways, and the question specifies order doesn't matter, so we divide.. (5x4x3)/(3x2x1) = **10**

Q2  
a) The die can land on any of the 6 faces every time you throw it, so after 4 throws, there are 6x6x6x6 possibilities = **1296**  
b) If you have two 3s and two of any other of the 5 faces, that is 1x1x5x5 = 25 possibilities. The threes can appear at different rolls though, so we use permutations: 4!/(2!x2!) = 6. The first 2! is the group of threes and the other is group of non-threes. So we get 25x6 = **150**  
c) There is one possibility where all 4 rolls are a 3. There are 150 where there are 2, and there are (1x1x1x5) x (4!/3!) = 5x4 = **20**

Q3  
a) There are 8! non-distinct combinations, and there are two copies of each of the four aces, so it is 8!/(2!x2!x2!x2!) = **2520**  
b) The first card can be any of the four suits, and the second can be any of the remaining three, 4x3 = 12. But that counts HeartsSpades and SpadesHearts etc, which means we divide by two to avoid double counting. 12/2 = **6**  
c) You can have either Hearts or Diamonds for each card dealt (2x2), but this counts both HeartsDiamonds and DiamondsHearts, so we subtract one. 4-1 = **3**
