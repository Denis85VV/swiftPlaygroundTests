import UIKit

// Модуль 10. Инициализировать две переменные любого типа и поменять их местами
var a = "Пончик"
var b = "Кекс"
print("Первый \(a) потом \(b)")
(a,b) = (b,a)
print("Теперь стал первым \(a) потом \(b)")

// Модуль 11. Создать условие со всеми возможными развилками
let name = "Anlexander"
let age = 24
let height = 1.85 // рост в метрах
type(of: height)
let weight = 88 // кг
var cashInWallet = 1.6 // $
var isVirgin = false
var hasKey = false

if (name == "Anlexander" || name == "Denis" || name == "Emil") {
  print("Nice, you are in a list! Please buy a ticket")
  if (cashInWallet >= 13 && isVirgin) || (cashInWallet >= 5 && !isVirgin) {
    cashInWallet -= (isVirgin ? 13 : 5)
    print("Thanks for bought a ticket to the party, pal")
    if cashInWallet >= 5 {
      cashInWallet -= 5
      print("Nice tequila. Сheers! Balance now is \((cashInWallet*100).rounded()/100) $")
    } else if hasKey {
      print("Do not pay for tequila. Just drink! Сheers!.")
    } else {
      print("Alcohol to expensive for you. In a pocket only \((cashInWallet*100).rounded()/100) $")
    }
  } else {
    print("You don't have enough money. Only \((cashInWallet*100).rounded()/100) $")
    if (age >= 18 && (height / ((Double(weight) / 100 ) + 1)) < 0.85) || (age >= 18 && (height / ((Double(weight) / 100 ) + 1)) > 0.85) {
      print("You are not ugly. Welcome to the party, pal!")
    } else if hasKey {
      print("Oh you has a key! Nice. Go via backdoor, sneak as ninja.")
    } else {
      print("Sorry and goodby!")
    }
  }
} else {
  print("Sorry, you are not in the list. See you at next time!")
}

// Модуль 12. Инициалиализировать массив из рандомных целых чисел. В цикле for вывести чётные числа, в цикле while нечётные.

let numbers = [Int](1...100)
var evenNumbers = [Int]() // четные числа
var oddNumbers = [Int]() // не четные числа
var oddNumbersCounter = 1

for i in numbers {
  if i % 2 == 0 {
    evenNumbers.append(i)
  }
}
print(evenNumbers)

while oddNumbersCounter < 100 {
    if numbers[oddNumbersCounter] % 2 == 0 {
        oddNumbers.append(oddNumbersCounter)
    }
    oddNumbersCounter += 1
}
print(oddNumbers)
