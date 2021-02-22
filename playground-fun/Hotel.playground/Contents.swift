import UIKit

class Hotel {
    var address: String
    var numOfRooms: Int
    var cost: Double
    var manager: Manager?

    init(cost: Double, address: String, numOfRooms: Int) {
        self.address = address
        self.numOfRooms = numOfRooms
        self.cost = cost
    }
    
    func talkToManager() {
        if let manager = manager {
            print("Hello I'm \(manager.name)")
        }
    }
}

class Manager {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var palmBeach = Hotel(cost: 3.25, address: "Main St.", numOfRooms: 6)

print(palmBeach)

enum roomSize {
    case single
    case double
    case triple
    case quad
}

class Room {
    var roomNumber: Int
    var roomSize: roomSize
    
    init(name: String, roomNumber: Int, roomSize: roomSize) {
        self.roomNumber = roomNumber
        self.roomSize = roomSize
    }
}

//class Guest: Hotel {
//    var guestName: String
//    var stayDuration: Int
//    var finalPrice: Double
//
//    init(cost: Double, guestName: String, stayDuration: Int, finalPrice: Double) {
//        super.init(cost: cost)
//        self.name = name
//        self.stayDuration = stayDuration
//        self.finalPrice = finalPrice
//
//        func getPrice(price: Double) -> Double {
//            return finalPrice = stayDuration * cost
//        }
//    }
//}
