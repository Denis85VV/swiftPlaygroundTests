// Создать свою ошибку DividedByZeroError. Создать функцию которая принимает 2 числа - делимое и делитель. На выход функции пойдет результат деления. Если делитель равен 0 функция должна сгенерировать исключение DividedByZeroError.

enum ArithmeticErrors: Error {
    case DividedByZeroError
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
    print("Делить на ноль нельзя!")
}
