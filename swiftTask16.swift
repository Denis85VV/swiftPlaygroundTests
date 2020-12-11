// Создать функцию, на вход пойдёт массив строк. Функция должна возвращать массив строк без дубликатов.

import UIKit

func uniqueArray(set: Set<String>) -> Set<String> { // заменл массив на множество
  var unique: Set<String> = []
  for word in set {
    if let _ = unique.filter({$0 == word}).first {
    } else {
      unique.insert(word)
    }
  }
  return unique
}

print(uniqueArray(set: ["синий", "желтый", "синий", "желтый", "красный", "синий"]))
