import Foundation

struct Car {
    private let make: String = "Skoda"
    private let model: String = "Yeti"
    private let year: Int = 2010
    private var details: String {
        "\(year) \(make) \(model)"
    }
    
    func getDetails() -> String {
        details
    }
}

let car = Car()
print(car.getDetails())
