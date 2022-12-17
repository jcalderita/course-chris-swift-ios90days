import Foundation

// Addition
var a = 20 + 5
// Subtraction
var b = 20 - 5
// Multiplication
var c = 20 * 5
// Division
var d = 20 / 5
// Modulus
var e = 20 % 2

// Equations with variables
var f = (a * b) + (c / d)

// Increment the variable
f = f + 1
// or..
f += 1
// Decrement the variable
f -= 1
// Multiply the variable
f *= 2
// Divide the variable
f /= 4

// Additional operators
// (Make sure you have an 'import Foundation'
// statement at the top)

// Absolute number
var g = abs (-1)
// Ceiling
var h = ceil (1.8)
// Floor
var i = floor (1.4)
// Square Root
var j = sqrt (36)
// Power
var k = pow (2, 4)


/*
Challenge:
    4 people have dinner and want to split the bill.
    Calculate the total with tax and then how much each person owes.
    Assign it to the variable,
    'split' and then print it out to the
    console area.
*/

let people: Double = 4
let subtotal: Double = 128
let tax = 0.13
var split :Double = 0

split = (subtotal * (1 + tax)) / people
