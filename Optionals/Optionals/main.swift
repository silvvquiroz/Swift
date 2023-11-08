//
//  main.swift
//  Optionals
//
//  Created by luser on 11/7/23.
//

import Foundation

// opcional

var myName : String?
print(myName?.uppercased())


// obligatorio

var varOblig : String! = "holi"
print(varOblig!.uppercased())


// conversiones
 var edad = "21jiji"

//var aEntero = Int(edad) + 10 -> no se puede colocar así, ya que no se sabe si se podrá conertir la variable edad de tipo string a int
//opción 1:
var enteroOp1 = (Int(edad) ?? 0) + 10
print(enteroOp1)

//opción 2:
if let enteroOp2 = Int(edad) {
    print(enteroOp2 + 10)
}
else {
    print("wrong input")
}
