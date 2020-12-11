// Создать свою ошибку DividedByZeroError. Создать функцию которая принимает 2 числа - делимое и делитель. На выход функции пойдет результат деления. Если делитель равен 0 функция должна сгенерировать исключение DividedByZeroError.

import UIKit

enum ArithmeticErrors: Error {
    case DividedByZeroError
}

extension ArithmeticErrors: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .DividedByZeroError:
            return NSLocalizedString("Делить на ноль нельзя!", comment: "Divided by zero error")
        }
    }
}

func segmentation(numberOne: Double, numberTwo: Double) throws -> Double {
  if (numberTwo == 0) {
    throw ArithmeticErrors.DividedByZeroError
          }
  print("\(numberOne) / \(numberTwo) = \(numberOne / numberTwo)")
  return numberOne / numberTwo
}

do {
    try segmentation(numberOne: 228, numberTwo: 0)
} catch ArithmeticErrors.DividedByZeroError {
  let error: Error = ArithmeticErrors.DividedByZeroError
  print(error.localizedDescription)
}
