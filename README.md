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
Landon Romero and Evan Walther
## Summary
In this lab we used a truth table to create a half subtractor. We then used full adders to make a ones compliment adder which takes a number and adds it to another number and has a wrap around feature that lets you add negative numbers. This module has two stages first the addition of the 2 numbers then the addition of the sum and a 0 bit with the carry around from the first stage. The last thing we did was make a twos compliment module. In that module we invert the 8 bit input number and we add 1 to it with a carry. That gives us the inverted number.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half adder carry's a bit out where a half subtractor borrows a bit. 
Both circuits take two 1-bit inputs and produce the same primary output, but the half adder's second output is Carry while the half subtractor's is borrow. A carry is produced and sent up to the next bit, while a borrow is requested from the next bit, so the signals flow in opposite directions.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The carry out of the most significant bit has to be added back into the least significant bit, but that carry isn't known until the first addition finishes, so it can't be done in one pass. This forces a second adder stage, roughly doubling the gate count. One's complement also has two representations of zero, 00000000 and 11111111, so even checking whether a value is zero requires testing two cases.

### 3 - What is the edge case and problem with Two’s Complement number representation?
Two's complement has an asymmetric range of −128 to +127 for 8 bits, and the edge case is −128 (10000000), which cannot be negated. Inverting it gives 01111111 and adding 1 gives 10000000, because +128 has no 8-bit representation and the operation silently overflows. 
