import Foundation

struct TaxCalculator {
    private let tax: Double = 0.16
    
    func totalWithTax(subtotal: Double) -> Double {
        subtotal * (1 + tax)
    }
}

let taxCalculator = TaxCalculator()

print(taxCalculator.totalWithTax(subtotal: 30))


struct BillSplitter {
    func splitBy(subtotal: Double, people: Int) -> Double {
        TaxCalculator().totalWithTax(subtotal: subtotal) / Double(people)
    }
}

print(BillSplitter().splitBy(subtotal: 200, people: 4))
