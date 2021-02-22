import Foundation

// You are making a new RPG game. It will have several 
// character classes. 

// # Challenge:

// Define a base class: Player.
// with these properties:

// var hitPoints: Int
// var name: String

// Player should also implement an adventure method.
// This method should print "\(name) goes adventuring!"

// # Challenge:

// Define a class Fighter. It should be a sub class 
// of Player and implement a melee() method that 
// prints "\(name) attacks with sword!"
// Fighters have 8 hitPoints


class Player {
    var hitPoints: Int
    var name: String
    
    init(hitPoints: Int, name: String) {
        self.name = name
        self.hitPoints = hitPoints
    }
    
    func adventure() {
        print("\(name) goes adventuring!")
    }
}

class Fighter: Player {
    init(name: String) {
        super.init(hitPoints: 8, name: name)
    }
    
    func melee() {
        print("\(name) attacks with sword!")
    }
}
