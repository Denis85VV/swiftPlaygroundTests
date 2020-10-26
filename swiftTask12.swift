import UIKit

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
