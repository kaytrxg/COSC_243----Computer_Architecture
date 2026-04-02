# COSC_243----Computer_Architecture
This repository represents the labs/projects done within the COSC_243 course. Would include code like RISC-V, and other low-level languages that was learned throughout the course.

-- Module_1a_Assignment.pdf: 
                        Shows my understanding from binary to hexadecimal translation. Also, questions 2-3 are my understanding from    converting a logical equation to a functional logical circuuit. These answers are within a PDF file, with screenshots and written prediction for what the output should be

-- Module_1_Assignment.pdf: Involves answering a series of questions
                question 1: 
                    Involves drawing a truth table and a logic circuit that's equivalent to this Boolean function 
                    F(A) = ¯(A · A). Then the description is for what function thecircuit is performing and the logic circuit representing if it was only NAND technology allowed. 
                question 2 (a-e): 
                    Involves proving the following equation using the laws and properties of Boolean algebra
                question 3 (a-c): 
                    Involves considering this Boolean function, F = A¯B¯C  + AB¯C + ¯ABC + ABC. Part (a) refers to reducing the function using a Karnaugh map method. Part (b) is the logcial circuit representing the reduced function. And the description is explaing what function the circuit is performing. Part (c) refers to taking ~~F in Part (a) and also implementing a new logical circuit with only NAND gates. 
                queation 4 (a,b): 
                    Involes creating a 4 variable truth table with inputs (A,B,C,D) where F(A,B,C,D) is the modulo 2 sum of the input. Part (a) is the written out truth table I've created that's associated logical circuit. These minterms were found using the minterm design procedure. Part (b) is the Karnaugh map that was created to reduce the F(A,B,C,D), with a description explaining why XOR would be the function being performed

-- verilog_code: 
                This folder includes a design.sv and a testbench.sv files representing a 4-but Full Adder Subtractor with the NVCZ flags being the outputted results. The verilog_testcases.pdf file displays a predicted/written answer for that the NVCZ flags should be as well as a time diagram from the verilog code that would support the predicted answer. The description written below it is an explanation for why the NVCZ flags are, while also referring to the time units used within the program. 

