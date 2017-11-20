$here = Split-Path -Parent $MyInvocation.MyCommand.Path

$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'

. "$here\$sut"


Describe "FizzBuzzTest" {

    #Write a program to print out the numbers 1 to 100. 
    It "prints out the numbers 1 to 10:" {
        $actual = FizzBuzz 10
        $expected = "1 2 3 4 5 6 7 8 9 10"
        $actual | Should be $expected
    }

    #Make the program print out the word ‘Fizz’ if the number that would be printed can  be divided by 3 with no remainder. 
    It "prints out the word 'Fizz' if the number that would be printed can  be divided by 3 with no remainder:" {
        $actual = FizzBuzz 10 -fizz True
        $expected = "1 2 Fizz 4 5 Fizz 7 8 Fizz 10"
        $actual | Should be $expected
    }
	
    #Make the program also print out the word ‘Buzz’ if the number is divisible by 5.
    It "prints out the word 'Buzz' if the number is divisible by 5:" {
        $actual = FizzBuzz 20 -fizz True -buzz True
        $expected = "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 Fizz 16 17 Fizz 19 Buzz"
        $actual | Should be $expected
    }
	
    #Make the program also print out the word ‘FizzBuzz’ if the number is divisible by both 3 ​and  5.
    It "prints out the word 'FizzBuzz' if the number is divisible by both 3 and 5:" {
        $actual = FizzBuzz 20 -fizz True -buzz True -fizzbuzz True
        $expected = "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz"
        $actual | Should be $expected
    }

}