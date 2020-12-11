import UIKit

// Создать класс Animal с любыми функциями и свойствами присущие животным (например, количество ног, травоядное или хищник и т.д.)...

enum Diet {
    case Herbivore
    case Carnivore
}

enum Sex {
    case Male
    case Female
    case Other
}

enum Size:Int {
    case ExtraSmall = 0
    case Small = 1
    case Medium = 2
    case Large = 3
    case ExtraLarge = 4
}

enum Area {
    case  Arctic
    case  Forest
    case  Steppe
    case  Desert
    case  Water
}

protocol AnimalProtocol {
  var name: String { get }
  var sex: Sex { get }
  var size: Size { get }
  var diet: Diet { get }
  var area: Area { get }
  var weight: Double { get }
  var age: Int { get }
  var lags: Int { get }
  func printAnimalDescription()
}

class Animal: AnimalProtocol {
    let name: String
    let sex: Sex
    let size: Size
    let diet: Diet
    let area: Area
    let weight: Double
    let age: Int
    let lags: Int

  init(name: String, sex: Sex, size: Size, diet: Diet, area: Area, weight: Double, age: Int, lags: Int) {
        self.name = name
        self.sex = sex
        self.size = size
        self.diet = diet
        self.weight = weight
        self.age = age
        self.lags = lags
        self.area = area
    }
  func printAnimalDescription() {
    print("""
        Животное \(name) имеет следующие характеристики:
        Пол: \(sex)
        Размер: \(size)
        Питание: \(diet)
        Вес: \(weight) кг
        Возрост: \(age)
        Количество конечностей: \(lags) шт
        Зона обитания \(area)
    """)}
}
let panda = Animal(name: "Panda", sex: .Female, size: .Medium, diet: .Herbivore, area: .Forest, weight: 45.2, age: 12, lags: 4)
panda.printAnimalDescription()
