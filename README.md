# Perl Script Memory Leak Bug

This repository demonstrates a common issue in Perl scripts involving memory leaks when processing large files.

## Bug Description
The `bug.pl` script attempts to process a large file line by line. However, due to inefficient memory management, it freezes when it reaches a certain number of lines (approximately 1 million in this case).  The root cause is that the script doesn't explicitly release memory after processing each line, leading to memory exhaustion.

## Solution
The `bugSolution.pl` script provides a corrected version. It addresses the memory issue by ensuring that large data structures are freed and unnecessary objects are removed.  The solution may involve using techniques like explicitly undefining variables, utilizing lexical scoping to manage memory lifetimes, and potentially leveraging modules designed for efficient memory management in Perl.

## How to Reproduce
1.  Create a large text file (e.g., 2+ million lines). 
2.  Run `bug.pl` on the large file. You should observe the script freezing or running very slowly.
3.  Run `bugSolution.pl` on the same large file. This should run more efficiently without memory issues.

## Contributing
Contributions are welcome! Feel free to submit pull requests with improvements or alternative solutions.