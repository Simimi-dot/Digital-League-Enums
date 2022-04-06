import UIKit
import Foundation


// MARK: - КОНЕЧНЫЙ ВАРИАНТ №2

enum LessonType {
    case math(rating: Int)
    case ntiveLanguage(rating: Int)
    case computerSince(rating: Int)
    case literature(rating: Int)
}

extension LessonType: Equatable {
    static func == (lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a == b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a == b
        case (.computerSince(let a), .computerSince(let b)): return a == b
        case (.literature(let a), .literature(let b)): return a == b
        default: return false
        }
    }
    
    static func != (lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a != b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a != b
        case (.computerSince(let a), .computerSince(let b)): return a != b
        case (.literature(let a), .literature(let b)): return a != b
        default: return false
        }
    }
}

extension LessonType: Comparable {
    
    static func <(lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a < b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a < b
        case (.computerSince(let a), .computerSince(let b)): return a < b
        case (.literature(let a), .literature(let b)): return a < b
        default: return false
        }
    }
    static func >(lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a > b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a > b
        case (.computerSince(let a), .computerSince(let b)): return a > b
        case (.literature(let a), .literature(let b)): return a > b
        default: return false
        }
    }
    static func <=(lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a <= b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a <= b
        case (.computerSince(let a), .computerSince(let b)): return a <= b
        case (.literature(let a), .literature(let b)): return a <= b
        default: return false
        }
    }
    static func >=(lhs: LessonType, rhs: LessonType) -> Bool {
        switch (lhs, rhs) {
        case (.math(let a), .math(let b)): return a >= b
        case (.ntiveLanguage(let a), .ntiveLanguage(let b)): return a >= b
        case (.computerSince(let a), .computerSince(let b)): return a >= b
        case (.literature(let a), .literature(let b)): return a >= b
        default: return false
        }
    }
}

let someComparable = LessonType.ntiveLanguage(rating: 5) < LessonType.ntiveLanguage(rating: 6)
let someComparable2 = LessonType.ntiveLanguage(rating: 5) > LessonType.ntiveLanguage(rating: 6)
let someEquatable = LessonType.ntiveLanguage(rating: 5) == LessonType.ntiveLanguage(rating: 5)
let someComparable4 = LessonType.ntiveLanguage(rating: 7) <= LessonType.ntiveLanguage(rating: 7)
let someComparabl5 = LessonType.ntiveLanguage(rating: 10) >= LessonType.ntiveLanguage(rating: 10)
let someEquatable2 = LessonType.ntiveLanguage(rating: 5) != LessonType.ntiveLanguage(rating: 6)





