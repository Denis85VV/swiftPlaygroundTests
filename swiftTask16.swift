import UIKit

// Создать функцию, на вход пойдёт массив строк. Функция должна возвращать массив строк без дубликатов.

func uniqueArray(array: [String]) -> [String] {
  var unique:[String] = []
  for word in array {
    if let _ = unique.filter({$0 == word}).first {
    } else {
      unique.append(word)
    }
  }
  return unique
}
print(uniqueArray(array: ["синий", "желтый", "синий", "желтый", "красный", "синий"]))
