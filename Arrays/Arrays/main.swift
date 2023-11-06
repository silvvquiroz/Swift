//
//  main.swift
//  Arrays
//
//  Created by luser on 11/4/23.
//

import Foundation

// ARRAYS

var myFavMovies = ["Clueless", "Mean Girls", "Orgullo y Prejuicio", 5] as [Any]

print(myFavMovies)
//myFavMovies[0].append("texto") -> no se puede acceder a los atributos de clase si el arreglo es Any


// SETS
var mySet : Set = [1,2,3,4,5]

var myInternetArray = [1,2,3,3,4]
print(myInternetArray)
var myInternetSet = Set(myInternetArray)
print(myInternetSet)
myInternetArray = Array(myInternetSet).sorted()
print(myInternetArray)

// combinar 2 sets:
var set1 : Set = [1,2,3]
var set2 : Set = [3,4,5]
var set3 = set1.union(set2)
print(set3)
