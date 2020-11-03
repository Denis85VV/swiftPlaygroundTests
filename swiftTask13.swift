import UIKit

// Модуль 13. Создать функцию с 1 входным параметром - строкой, без выходных параметров. Она должна выводить эту строку в консоль. Создать замыкание которое будет делать то же самое.

func printTextAsFunction(text: String) {
  print(text)
}

let printTextAsClosure = { (text: String) -> Void in
    print(text)
}

printTextAsFunction(text: "Функция")
printTextAsClosure("Замыкание")

/*
func handler(text: String, sentence: (String) -> ()){
  print(text)
  let plusText = "Замкнул " + text
  sentence(plusText)
}

handler(text: "функция") { (text) -> Void in
  print(text + "(ю)!")
}
*/
