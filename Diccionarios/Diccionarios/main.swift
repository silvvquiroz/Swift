//
//  main.swift
//  Diccionarios
//
//  Created by luser on 11/6/23.
//

import Foundation

// definición
var personajesActores = ["Tony Stark" : "Robert Dowey Jr", "Loki" : "Tom Hiddleston", "Peter Parker" : "Tom Holland"]

// llamada
let variable = personajesActores["Tony Stark"]
print(personajesActores["Tony Stark"])

personajesActores["Loki"] = "Silvana"

// añadir
personajesActores["Thor"] = "El gemelo bueno"
print(personajesActores)

