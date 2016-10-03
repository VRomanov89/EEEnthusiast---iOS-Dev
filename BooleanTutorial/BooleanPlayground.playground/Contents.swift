import UIKit

/*
 Objectives:
 Part1: Discuss boolean operators: AND, OR, XOR, NOT
 Part2: Discuss two's compliment for negative number representation
 Part3: Discuss binary shift operators: <<, >>
 Part4: Data shift operator example
 */

// Part 1
// AND Operator (&)
var A: UInt8 = 0b1100
var B: UInt8 = 0b1010
var C = A & B
var binaryNum = String(C, radix: 2)

// OR Operator (|)
A = 0b1100
B = 0b1010
C = A | B
binaryNum = String(C, radix: 2)

// XOR Operator (^)
A = 0b1100
B = 0b1010
C = A ^ B
binaryNum = String(C, radix: 2) //0110

// NOT Operator (~)
A = 0b00001111
C = ~A
binaryNum = String(C, radix: 2)

//Part 2
// Converting from Positive to Negative integer.
var D: Int8 = 67
binaryNum = String(D, radix: 2)
var E = ~D + 1
binaryNum = String(E, radix: 2)
var F = ~E + 1
binaryNum = String(F, radix: 2)

//Part 3
// << Operator (<<<)
A = 0b1010
C = A << 2
binaryNum = String(C, radix: 2) //01010000

// << Operator with signed Int
D = 0b1010
E = D << 4
binaryNum = String(E, radix: 2)

// >> Operator
A = 0b101000
C = A >> 2 // 00 >> A => 00101000 to 00001010
binaryNum = String(C, radix: 2) //00000010

// >> Operator with signed Int
D = -10
E = D >> 1
binaryNum = String(E, radix: 2)

//Part4
var Data1: UInt16 = 0b10101010
var Data2: UInt16 = 0b11001100
var Data3: UInt16 = (Data1 << 8) | Data2 // 1010101011001100
binaryNum = String(Data3, radix: 2)



















