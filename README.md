# Finite State Machine

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Cherrie Rose Taltala & 
Sophia Inez Dimas

## Summary
Design a finite state machine by implementing one hot encoding and binary encoding using multiple D-flip flops

## Lab Questions

### Compare and contrast One Hot and Binary encodings
On hot creates a separate binary column for every unique category.  
Binary method first maps categories to integers, converts those integers into binary code, 
and then splits each binary digit into its own separate column

### Which method did your team find easier, and why?
One hot is easier to understand but it requires to declare more DFFs than the binary method

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
If speed is required and complexity is high, binary method seems more effective.
One hot is easier to use for simple applications.
