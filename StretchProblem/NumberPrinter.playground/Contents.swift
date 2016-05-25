//: Playground - noun: a place where people can play

import UIKit

let horizontal = " --- "
let left = "|    "
let right = "    |"
let both = "|    |"
let empty = "     "

func numberPrinter(int: Int) -> String {
    var numberString = ""
    for row in 1...5 {
        for num in String(int).characters {
            switch (row, num) {
            case (1, "0"), (1, "2"), (1, "3"), (1, "5"), (1, "7"), (1, "8"), (1, "9"), (3, "2"), (3, "3"), (3, "4"), (3, "5"), (3, "6"), (3, "8"), (3, "9"), (5, "0"), (5, "2"), (5, "3"), (5, "5"), (5, "6"), (5, "8"):
                numberString = numberString + horizontal + " "
            case (1, "6"), (2, "5"), (2, "6"), (4, "2"):
                numberString = numberString + left + " "
            case (1, "1"), (2, "1"), (2, "2"), (2, "3"), (2, "7"), (3, "1"), (3, "7"), (4, "1"), (4, "3"), (4, "4"), (4, "5"), (4, "7"), (4, "9"), (5, "1"), (5, "4"), (5, "9"):
                numberString = numberString + right + " "
            case (1, "4"), (2, "0"), (2, "4"), (2, "8"), (2, "9"), (3, "0"), (4, "0"), (4, "6"), (4, "8"):
                numberString = numberString + both + " "
            default:
                numberString = numberString + empty + " "
                break
            }

        }
        numberString = numberString + "\n"
    }
    return numberString
}

let num = numberPrinter(275)

print(num)
