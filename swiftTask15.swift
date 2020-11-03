import UIKit

// Модуль 15. Опционалы. Строки. Энумы (Перечисления)  19.10.2020  09.11.2020  Создать любой строковый enum с несколькими значениями. В цикле пробежаться по каждому case этого enum и вывести в консоль. Обязательно использовать allCases.

enum transactionStatus: CaseIterable {
  case new, accepted, rejected, inProgress, hasQuestions
}

// первый вариант решения
let allStatus = transactionStatus.allCases.map({ "\($0)" })
for status in allStatus {
    print("Transaction has status \(status).")
}

// второй вариант решения
let allStatusWithoutForIn: () = transactionStatus.allCases.forEach {
  print("Transaction has status \($0).")
}
