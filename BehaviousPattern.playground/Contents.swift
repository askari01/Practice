import Cocoa

protocol Withdrawing {
    func withdraw(amount: Int) -> Bool
}


final class MoneyPile: Withdrawing {
    var value: Int
    var quantity: Int
    var next: Withdrawing?
    
    init(value: Int, quantity: Int, next: Withdrawing?) {
        self.value = value
        self.quantity = quantity
        self.next = next
    }
    
    func withdraw(amount: Int) -> Bool {
        var amount = amount
        
        func canTakeSomeBill(want: Int) -> Bool {
            return (want/self.value) > 0
        }
        
        var quantity = self.quantity
        
        while canTakeSomeBill(want: amount) {
            if quantity == 0 {
                return false
            }
            
            amount -= self.value
            quantity -= 1
            
        }
        
        guard amount > 0 else {
            return true
        }
        
        if let next = self.next {
            return next.withdraw(amount: amount)
        }
        
        return false
    }
}

final class ATM: Withdrawing {
    private var hundred: Withdrawing
    private var fifty: Withdrawing
    private var twenty: Withdrawing
    private var ten: Withdrawing
    
    private var startPile: Withdrawing {
        return self.hundred
    }
    
    init(hundred: Withdrawing,
         fifty: Withdrawing,
         twenty: Withdrawing,
         ten: Withdrawing) {
        self.hundred = hundred
        self.fifty = fifty
        self.twenty = twenty
        self.ten = ten
    }
    
    func withdraw(amount: Int) -> Bool {
        return startPile.withdraw(amount: amount)
    }
    
}

let ten = MoneyPile(value: 10, quantity: 6, next: nil)
let twenty = MoneyPile(value: 20, quantity: 2, next: nil)
let fifty = MoneyPile(value: 50, quantity: 2, next: nil)
let hundred = MoneyPile(value: 100, quantity: 1, next: nil)

var atm = ATM(hundred: hundred,
              fifty: fifty,
              twenty: twenty,
              ten: ten)
atm.withdraw(amount: 310)
atm.withdraw(amount: 100)
