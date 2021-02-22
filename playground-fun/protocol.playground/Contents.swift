protocol Perimeter {
    var side: Double { get }
}

struct Square: Perimeter {
    var side: Double
}

struct Circle: Perimeter {
    var side: Double
}

var shapes: [Perimeter] = []

shapes.append(Circle(side: 45.5))
shapes.append(Square(side: 40))

print(shapes)

