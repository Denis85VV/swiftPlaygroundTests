//  -------- 1 --------

enum HTTPErrorCode: Error {
    case errorCode400 // 400
    case errorCode404 // 404
    case errorCode500 // 500
}

var errorCode400: Bool = false
var errorCode404: Bool = true
var errorCode500: Bool = false

do {
    if errorCode400 {
        throw HTTPErrorCode.errorCode400
    }
 
    if errorCode404 {
        throw HTTPErrorCode.errorCode404
    }
 
    if errorCode500 {
        throw HTTPErrorCode.errorCode500
    }
} catch HTTPErrorCode.errorCode400 {
    print("ошибка 400")
} catch HTTPErrorCode.errorCode404 {
    print("ошибка 404")
} catch HTTPErrorCode.errorCode500 {
    print("ошибка 500")
}

//  -------- 2 --------

func checkError<T: Numeric>(a: T) {
  
  let code400 = Int((String(describing: HTTPErrorCode.errorCode400)).suffix(3))
  let code404 = Int((String(describing: HTTPErrorCode.errorCode404)).suffix(3))
  let code500 = Int((String(describing: HTTPErrorCode.errorCode500)).suffix(3))
  
  if ( a == code400 as! T || a == code404 as! T || a == code500 as! T ) {
    return (print("HTTP Error is exist!"))
  } else {
    return (print("HTTP Error dosen't exist!"))
  }
}

checkError(a: 501) // HTTP Error dosen't exist!
checkError(a: 404) // HTTP Error is exist!

//  -------- 3 --------

func checkType<T,E>(a: T, b: E) {
  if type(of: T.self) == type(of: E.self) {
    return (print("Yes"))
  } else {
    return (print("No"))
  }
}

checkType(a: "String", b: 5.2)

//  -------- 4 --------

enum Exeption: Error {
    case yes
    case no
}

var yes: Bool = false
var no: Bool = true

func checkTypeError<T,E>(a: T, b: E) throws {

  if type(of: T.self) == type(of: E.self) {
    throw Exeption.yes
  }
  
  if type(of: T.self) != type(of: E.self) {
    throw Exeption.no
  }
}

do {
  try checkTypeError(a: "tratatata", b: 23.1) // No. Data type mismatch!
} catch Exeption.yes {
  print("Yes. Data type is equal!")
} catch Exeption.no {
  print("No. Data type mismatch!")
}

//  -------- 5 --------

func findIndex<T: Equatable>(array: [T], valueToFind: T) -> String? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
          return("\(index): \(value)")
        }
    }
  return("Sory data not found!")
}

findIndex(array: [1,23,2,312], valueToFind: 2) // 2: 2
