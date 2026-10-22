# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Hiram Silva & Zyad Kadri
## Summary
In this Lab we worked on the practical application of subtractors. There were two parts to assembling the program. The first part was assembling the full adder from Lab 6 using 1s complement, which did addition between two 4-bit numbers using a given IO table. The 1's complement adder was, in short, cantankerous. The second part was to create a 2's complement converter that took an 5-bit number and calculated its complement for use in the full adder. The complement number added to the normal number became the subtractor since the complement of a normal number is negative and the sum of the negative and positive results in a subtraction of the complement from the normal yielding a place value result from -8 up to +7 for an 4-bit adder and -16 up to +15 for a 5-bit adder. When the the program was loaded into the Basys3 board, the results showed that for any one LED switch [2-9] when turned on, all remaining LEDs would light up except for the three immediately after the switch that was turned on.  
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
	The main difference is the Carry vs. Borrow. In both labs, they were used to calculate using an XOR gate. However, The half-adder used an AND gate, while the half-subtractor used a NOT gate before the AND gate.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement? 
The end-around carry can cause some arithmetic problems when the result exceeds the bit quantity amount and does a wrap-around operation. So, while the end-around carry is inherent in 1's complement addition, it also is a limitation since it can yield a wrap-around that causes an untrustworthy number, such as when a 4-bit adder sums 7 + 1 = 8 when it can only be a maximum of 7. Therefore, some sort of check has to be written to verify the results to not exceed our 4-bit minimums and maximums. And any additional routine can slow down computing.
### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case comes from summing a function up to the most negative value but not the most positive. Because 0 takes a value place, +7 is the highest place value in a 4-bit system. This means that a 5-bit system is required for an adder to return a +8 result. This is the same for any N-bit. For example, a 5-bit adder will return a maximum of +15 and therefore will need a 6-bit adder for any hope to return a +16.
