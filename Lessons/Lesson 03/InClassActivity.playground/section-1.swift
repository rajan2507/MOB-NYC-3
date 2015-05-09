// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

var myname = "rajan"

var myage = 21


// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

//println("hello " + x + ", you are " + y)
println("Hello \(myname), you are \(myage) years old!")

// \variable turns variable part of the string

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if myage > 21 {
    println("you can drink")
} else if myage > 18 {
    println("you can vote")
} else if myage > 16 {
    println("you can drive")
}




// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if myage >= 21 {
    println("you can drive, vote, and drink (but not at the same time!)")
} else if myage >= 18 {
    println("you can drive and you can vote")
} else if myage >= 16 {
    println("you can drive")
}



// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

var x = 7

(1*7) - 1
(2*7) - 1
(3*7) - 1


for (var multiple = 1; multiple <= 50; multiple++) {
    println((multiple*7) - 1)
}
for(var product = 7; product <= 7 * 50; product = product + 7){
    println(product - 1)
}
    
31 / 2
30 % 2
31 % 2
var isEven = 784521938451

(isEven % 2 == 0)


// TODO: Create a constant called number

let number = 2


// TODO: Print whether the above number is even


println(number % 2 == 0)

// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()
var mad = count(myname)
println("Hello \(myname), your name is \(mad) character long!")




// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below
