//
//  main.swift
//  pwgen
//
//  Created by Lakr Aream on 2021/10/14.
//

import Foundation

// extension String {
//    var sanitizedFileName: String {
//        return components(separatedBy: .init(charactersIn: "/:?%*|\"<>\\")).joined()
//    }
// }
//
// extension Sequence where Element: Hashable {
//    func uniqued() -> [Element] {
//        var set = Set<Element>()
//        return filter { set.insert($0).inserted }
//    }
// }
//
// let availableCharacters = [
//    "ABCDEFGHJKMNPQRSTWXYZ",
//    "abcdefghjkmnpqrstwxyz",
//    "234567890",
//    "@#$%^&*()_+-[]=~`;:.,><"
// ]
//    .map { $0.sanitizedFileName }
//    .map { Array<Character>($0) }
//    .flatMap { $0 }
//    .uniqued()
//
// debugPrint(availableCharacters)

let availableCharacters =
    [
        "A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "M", "N", "P", "Q", "R", "S", "T", "W", "X", "Y", "Z",
        "a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "m", "n", "p", "q", "r", "s", "t", "w", "x", "y", "z",
        "2", "3", "4", "5", "6", "7", "8", "9", "0",
        "@", "^", "&", "(", ")", "_", "+", "-", "[", "]", "~", "`", ".", ",",
    ]

var requiredLenth = 32
if CommandLine.argc > 1,
    let inputLenth = Int(CommandLine.arguments[1]),
   inputLenth > 0
{
    requiredLenth = inputLenth
}

var result = ""
while result.count < requiredLenth {
    result.append(availableCharacters.randomElement()!)
}

print(result)

