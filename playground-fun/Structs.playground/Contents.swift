import UIKit

var str = "Hello, playground"

struct BobaTea {
    let teaType: BobaType
    let sweetnessLevel: Int
    let hasBoba: Bool
}

struct Coffee {
    var bean: CoffeeType
    let sugar: Int
    let hasMilk: Bool
    
    func printDescription() {
        print("\(bean), \(sugar) \(hasMilk ? "with milk" : "no milk")")
    }
}

var coffee = Coffee(bean: .robusta, sugar: 0, hasMilk: false)

print(coffee.sugar)

struct Order {
    let customer: Customer
    let boba: BobaTea
    
    func printDescription() {
        print("\(customer.firstName) ordered \(boba.teaType) tea, \(boba.sweetnessLevel)% sweetness, \(boba.hasBoba ? "with boba" : "no boba")")
    }
}

func createBoba(teaType: BobaType, sweetness: Int, hasBoba: Bool) -> BobaTea {
    let boba = BobaTea(teaType: teaType, sweetnessLevel: sweetness, hasBoba: hasBoba)
    return boba
}

createBoba(teaType: .black, sweetness: 0, hasBoba: true)

func createCoffee(bean: CoffeeType, sugarLevel: Int, HasMilk: Bool) -> Coffee {
    let coffee = Coffee(bean: bean, sugar: sugarLevel, hasMilk: HasMilk)
    return coffee
}

createCoffee(bean: .robusta, sugarLevel: 0, HasMilk: false)


func takeOrder(teaType: BobaType, sweetness: Int, firstName: String, lastName: String, hasBoba: Bool) -> Order {
    let order = BobaTea(teaType: teaType, sweetnessLevel: sweetness, hasBoba: hasBoba)
    let customer = Customer(firstName: firstName, lastName: lastName)
    let newOrder = Order(customer: customer, boba: order)
//    print("\(name) ordered \(teaType) tea, \(sweetness)%, with boba")
    return newOrder
}

let newOrder = takeOrder(teaType: .black, sweetness: 0, firstName: "Alex", lastName: "Gray", hasBoba: true)

newOrder.printDescription()

let coffeeOrder = createCoffee(bean: .robusta, sugarLevel: 0, HasMilk: false)

coffeeOrder.printDescription()

var alexCoffee = createCoffee(bean: .robusta, sugarLevel: 0, HasMilk: false)
print(alexCoffee.bean)
alexCoffee.bean = .robusta
print(alexCoffee.bean)


class Cashier {
    var firstName: String
    var lastName: String
    var hasBathroomKey: Bool
    
    init(firstName: String, lastName: String, hasBathroomKey: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.hasBathroomKey = hasBathroomKey
    }
}

let Alex = Cashier(firstName: "Alex", lastName: "Gray", hasBathroomKey: true)
print(Alex.firstName)

class Customer {
    let firstName: String
    let lastName: String
    
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

enum CoffeeType {
    case robusta
    case liberica
    case aravica
}
enum BobaType {
    case black
    case oolong
    case lavendar
    case chai
}

