import UIKit

var str = "Hello, playground"

var suitcase = ["Phone", "Wallet", "T-shirt", "Socks"]
print(suitcase[3])

var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]
fruit.remove(at:3)
fruit.remove(at:1)
print(fruit)

var months = ["Jan", "Feb", "Mar", "May"]

func spaceBetweenString(words: [String]) -> String {
    let joiner = " "
    let joinedStrings = words.joined(separator: joiner)
    return joinedStrings
}

spaceBetweenString(words: months)

