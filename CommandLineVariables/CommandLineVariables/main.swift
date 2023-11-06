//
//  main.swift
//  CommandLineVariables
//
//  Created by luser on 11/3/23.
//

import Foundation

// PARTE 1 : definición de variables y tipos

// VARIABLES
var string = "jiji"
print(string)

var myNumber = 4*5
print(myNumber)

var userName = "Silvana"
var userSurname = "Quiroz"
print(userName + " " + userSurname)

userName = "Carlos"
print(userName + " " + userSurname)


// CONSTANTES
let userAge = 21
//userAge = 30 -> no se puede pq let no es mutable


// TIPOS
// 1. STRING
userName.append("Mauricio")
print(userName)

// 2. INTEGER DOUBLE FLOAT
let num1 = 10.5
//var result = userAge + num1 -> no se puede pq son de distinto tipo
let num2 = 30.0
var result = num1 * num2
print("result en double: ", result)
// 3. BOOLEAN
var myBoolean = false
if myBoolean {
    print("yes")
}
else {
    print("no")
}

// cambiar tipos
var resultString = result.description // -> no va () porque no es un función, es una variable del objeto
print("result en string: " + resultString)


// PARTE 2 : definición de variables especificando tipos

var myString : String = "silvi"
let anotherNumber : Int = 74722
let variablejiji : String = String(30)
//let variablejiji2 : Int = Int("hola") -> no se pude pqno tndría sentido
