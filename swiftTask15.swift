import UIKit

// Модуль 15. Опционалы. Строки. Энумы (Перечисления). Создать любой строковый enum с несколькими значениями. В цикле пробежаться по каждому case этого enum и вывести в консоль. Обязательно использовать allCases.

enum transactionStatus: String, CaseIterable {
  case new, accepted, rejected, inProgress, hasQuestions
}

transactionStatus.allCases.forEach {
  print("Transaction has status \($0).")
}
