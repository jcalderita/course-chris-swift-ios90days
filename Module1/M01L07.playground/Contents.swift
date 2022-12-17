import Foundation

func goodMorting() {
    print("Good Morning")
}

goodMorting()

func printTotalWithTax(subtotal: Double) {
    print(subtotal * 1.13)
}

printTotalWithTax(subtotal: 10.2)

func getTotalWithTax(subtotal: Double) -> Double {
    subtotal * 1.13
}

print(getTotalWithTax(subtotal: 10.2))

func calculateTotalWithTax(subtotal: Double, tax: Double) -> Double {
    subtotal * tax
}

print(calculateTotalWithTax(subtotal: 10.2, tax: 1.13))
