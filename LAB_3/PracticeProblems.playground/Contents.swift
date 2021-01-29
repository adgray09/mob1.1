import UIKit

// 1. You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from colorHex.

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

for (color, hex) in colorHex {
    print("\(color) : \(hex)")
}

// 2. Given an array of colors. We need to know how many times each color appears in the array.

var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

// making empty dictionary with string(color) int(number of occurences)
var counts: [String:Int] = [:]

for item in colors {
    
    // making histogram
    counts[item, default: 0] += 1
    // another way implementation
    // counts[item] = (counts[item] ?? 0) + 1
}

for (key,value) in counts {
    print("\(key) occurs \(value) time(s)")
}

// 3. Write a function that returns the first N Fibonacci numbers.
// Sequence: 1,1,2,3,5,8,13

func fibo(n: Int) -> [Int] {
    var sequenceArray: [Int] = []
    var num1 = 1
    var num2 = 0
    
    for _ in 0 ..< n {
        let num = num1 + num2
        num1 = num2
        num2 = num
        sequenceArray.append(num2)
    }
    
    return sequenceArray
}

fibo(n: 7)

// Write a function that prints the powers of 2 that are less than or equal to N.

func powerOfTwo(n: Int) -> String {
//    var options: [Int] = []
    var base = 2
    var count = 1
    while base <= n {
        // options.append(count)
        count += 1
        base = base * 2
    }
    return("you can do up to the power of \(count) for the number \(n)")
}

powerOfTwo(n: 10000)

// 5. Given
var coursesAndStudents = [(label: "MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]
// write a function that prints how many students belong to each track

for tuple in coursesAndStudents {
    print("There are \(tuple.1) students in the \(tuple.0) class")
}

// 6. Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

func lastAndFirstSame(array: [Int]) -> Bool {
    guard array.count >= 1 else {
        return false
    }
    
    let start = array.first
    let end = array.last
    
    return start == end
}

var dummyArray: [Int] = [1,2,3,4,5,1]

lastAndFirstSame(array: dummyArray)

// 7. Write a function to compute the sum of all the elements of a given array of integers.

func sumOfArray(array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}

sumOfArray(array: dummyArray)

// 8. Write a function to reverse the elements of an array of integers to left direction. [1,2,3] becomes [3,2,1]

func reverseArray<GenericType>(array: [GenericType]) -> [GenericType] {
    var reversedArray: [GenericType] = []
    
    for element in array {
        reversedArray.insert(element, at: 0)
    }
    return reversedArray
}

let numArray = [0, 1, 2, 3, 4]
let strArray: [String] = ["a", "b", "c"]
print(type(of: reverseArray(array: strArray)))

// 9. Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters.

func hasUniqueLetters(word: String) -> Bool {
    var isUnique = true
    var letters: [Character:Int] = [:]
    for letter in word {
        letters[letter, default: 0] += 1
    }
    for (_,value) in letters {
    if value > 1 {
        isUnique = false
    }
}
    return isUnique
}

hasUniqueLetters(word: "aalex")
hasUniqueLetters(word: "Uncopyrightable")

// 10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.

func specificLetterCount(word: String, char: Character) -> Int {
    var letters: [Character:Int] = [:]
    var characterCount = 0
    for letter in word {
        letters[letter, default: 0] += 1
    }
    for (key,value) in letters {
        if key == char {
            characterCount = value
        }
    }
    return characterCount
}

specificLetterCount(word: "aaaalexxxxxxx", char: "x")

// 1. Given the following grid
let image = UIImage(named: "grid.png") // CLICK TO SEE GRID IMAGE ------>
// Write a function that adds up the elements in the even rows only

func createGrid(grid: [[Int]]) {
    for row in sampleGrid {
        print(row)
    }
}

func addEvenGridRow(grid: [[Int]]) {
    var rowSum = 0
    var rowNum = 0
    
    createGrid(grid: grid)
    
    for row in grid {
        if rowNum % 2 == 0 {
            rowSum = row.reduce(0, +)
            print("Sum of row \(rowNum) = \(rowSum)")
            rowSum = 0
        }
        rowNum += 1
    }
}

let sampleGrid = [[0,0,0,0,0], [0,1,2,3,4], [0,2,4,6,8], [0,3,6,9,12], [0,4,8,12,16]]
addEvenGridRow(grid: sampleGrid)
