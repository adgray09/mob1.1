import Foundation
/*:
 ## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */

struct GPS {
    var latitude: Double = (0.0)
    var longitude: Double = (0.0)
}


/*:
 Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
 */

var somePlace = GPS()

somePlace.latitude = 51.514004
somePlace.longitude = 0.125226

print(somePlace)

/*:
 Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
 */


/*:
 Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
 */

struct Book {
    var title: String = " "
    var author: String = " "
    var pages: Int = 0
    var price: Double = 0.0
    
    func bookDescription() {
        print("You can find \(title) written by \(author) for \(price) in our fantasy section")
    }
}

/*:
 Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
 */

var favoriteBook = Book()

favoriteBook.title = "Lord of the Rings: The Fellowship of the Ring"
favoriteBook.author = "J.R.R Tolkien"
favoriteBook.pages = 300
favoriteBook.price = 10.50

print(favoriteBook)

//: [Next](@next)

/*:
## Users and Distance
For most apps you'll need to have a data structure to hold information about a user. Create a `User` struct that has properties for basic information about a user. At a minimum, it should have properties to represent a user's name, age, height, weight, and activity level. You could do this by having `name` be a `String`, `age` be an `Int`, `height` and `weight` be of type `Double`, and `activityLevel` be an `Int` that will represent a scoring 1-10 of how active they are. Implement this now.
*/

struct User {
    var name: String = " "
    var age: Int = 0
    var height: Double = 0.0
    var weight: Double = 0.0
    var activityLevel: Int = 0
}

/*:
Create a variable instance of `User` and call it your name. Use the memberwise initializer to pass in information about yourself. Then print out a description of your `User` instance using the instance's properties.
*/

var Alex = User(name: "Alex", age: 21, height: 5.9, weight: 175, activityLevel: 4)
print(Alex)

/*:
Distance can be represented using a variety of units of measurement. Create a `Distance` struct that will represent distance in various units of measurement. At a minimum, it should have a `meters` property and a `feet` property. Create a custom initializer corresponding to each property (i.e. if you only have the two properties for meters and feet you will then have two initializers) that will take in a distance in one unit of measurement and assign the correct value to both units of measurements. Hint: *1 meter = 3.28084 feet*.
- Example: If you use the initializer for meters and pass in a distance of 1600, the initializer should set `meters` to 1600 and `feet` to 5249.344.
*/
struct Distance {
    var meters: Double = 0.0
    var feet: Double = 0.0
    
    
    func meterToFeet() {
        print(meters * 3.28084)
    }
    
    func feetToMeter() {
        print(feet/3.28084)
    }
}

/*:
Now create an instance of `Distance` called `mile`. Use the initializer for meters to set the distance to 1600. Print out the property for feet and verify that it is equal to 5249.344.
*/

var mile = Distance(meters: 1600)
mile.meterToFeet()
var mile2 = Distance(feet: 5249.344)
mile2.feetToMeter()
/*:
Now create another instance of `Distance` and give it some other distance. Ensure that both properties are set correctly.
*/


/*:
## Mile Times and Congratulations
The `RunningWorkout` struct below holds information about your users' running workouts. However, you decide to add information about average mile time. Add a computed property called `averageMileTime` that uses `distance` and `time` to compute the user's average mile time. Assume that `distance` is in meters and 1600 meters is a mile.
Create an instance of `RunningWorkout` and print the `averageMileTime` property. Check that it works properly.
*/
struct RunningWorkout {
   var distance: Double
   var time: Double
   var elevation: Double
    
    func averageMileTime() {
        let conversion = (time/distance) * 1600
        print(conversion)
    }
}

var runningWorkout = RunningWorkout(distance: 1600, time: 60.0, elevation: 0.0)
runningWorkout.averageMileTime()
/*:
In other app exercises, you've provided encouraging messages to the user based on how many steps they've completed. A great place to check whether or not you should display something to the user is in a property observer.
In the `Steps` struct below, add a `willSet` to the `steps` property that will check if the new value is equal to `goal`, and if it is, prints a congratulatory message. Create an instance of `Steps` where `steps` is 9999 and `goal` is 10000, then call `takeStep()` and see if your message is printed to the console.
*/
struct Steps {
    var steps: Int {
        willSet(newTotalSteps) {
            print("current steps \(steps)")
        }
        didSet {
            if steps == goal {
                print("GOAL ACHIEVED")
            } else {
                takeStep()
            }
        }
    }
   var goal: Int
   
   mutating func takeStep() {
       steps += 1
   }
}

var workout = Steps(steps: 9996, goal: 10000)
workout.takeStep()

/*:You can refer to this resource to read about Property Observers:
 https://www.hackingwithswift.com/read/0/17/properties
 */
//: [Next](@next)

/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
// */
//struct Book {
//    var title: String
//    var author: String
//    var pages: Int
//    var price: Double
//}
/*:
 
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
favoriteBook.bookDescription()

struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int

    mutating func like() {
        likes += 1
    }
}
//: [Next](@next)

var myPost = Post(message: "HEYO", likes: 0, numberOfComments: 0)
myPost.like()
print(myPost)

/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */

enum Suit {
    case clubs
    case spades
    case diamonds
    case hearts
}

/*:
 Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
 */

var cardInHand = Suit.hearts
print(cardInHand)

/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */
cardInHand = .spades
print(cardInHand)


/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */

func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .hearts:
        print("Hearts")
    case .clubs:
        print("clubs")
    case .spades:
        ("spades")
    case .diamonds:
        "diamonds"
    }
}

var dummyCard = Suit.hearts
getFortune(cardSuit: dummyCard)

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */

struct Card {
    var suit: Suit
    var value: Value
    
    enum Value {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }
    
    func cardDescription() {
        print("\(value) of \(suit)'s")
    }
}


/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */

var AlexCard = Card(suit: .hearts, value: .ace)
AlexCard.cardDescription()
