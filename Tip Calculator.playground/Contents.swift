import UIKit

var str = "Hello, playground"

let AmountText:Double = 100

let tipPercent = 0.10

let totalPeople:Double = 3

let totalTip = AmountText * tipPercent
print(totalTip)

let totalTipInCent:Double = totalTip * 100
print(totalTipInCent)

let tipPerPerson1 = round(totalTipInCent/totalPeople)/100
print(tipPerPerson1)

