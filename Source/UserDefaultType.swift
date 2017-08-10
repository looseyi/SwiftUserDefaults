//
//  UserDefaultType.swift
//  SwiftUserDefault
//
//  Created by Edmond on 19/03/2560 BE.
//  Copyright © 2560 BE Edmond. All rights reserved.
//

import Foundation
import CoreGraphics


enum UserDefaultProxy: String {
    case object, dictionary, array, stringArr, data, date, string, int, float, double, url, bool
}

public class UserDefaultsItem<UserDefaultType> {
    typealias T = UserDefaultType

    var type: UserDefaultProxy? = nil
    let key: String

    public init(_ key: String) {
        self.key = key
        self.configureType()
    }

    func configureType() {
        let type = T.self
        if type == Any.self || type == AnyObject.self {
            self.type = .object
        } else if type == Dictionary<String, AnyObject>.self ||
            type == Dictionary<String, Array<Any>>.self ||
            type == Dictionary<String, Data>.self ||
            type == Dictionary<String, Date>.self ||
            type == Dictionary<String, String>.self ||
            type == Dictionary<String, Int>.self ||
            type == Dictionary<String, Float>.self ||
            type == Dictionary<String, Double>.self ||
            type == Dictionary<String, URL>.self ||
            type == Dictionary<String, Bool>.self ||
            type == Dictionary<String, Any>.self {
            self.type = .dictionary
        } else if type == [Any].self ||
            type == [Data].self ||
            type == [Date].self ||
            type == [String].self ||
            type == [Int].self ||
            type == [Float].self ||
            type == [Double].self ||
            type == [URL].self ||
            type == [Bool].self ||
            type == [[Any]].self {
            self.type = .array
        } else if type == Data.self {
            self.type = .data
        } else if type == Date.self {
            self.type = .date
        } else if type == String.self {
            self.type = .string
        } else if type == Int.self {
            self.type = .int
        } else if type == Double.self {
            self.type = .double
        } else if type == Float.self {
            self.type = .float
        } else if type == Float.self {
            self.type = .float
        } else if type == URL.self {
            self.type = .url
        } else if type == Float.self {
            self.type = .float
        } else if type == [String].self {
            self.type = .stringArr
        } else if type == Bool.self {
            self.type = .bool
        }
    }

    public var value: UserDefaultType? {
        get {
            return get(key)
        }

        set {
            if let value = newValue {
                set(key, value: value)
            } else {
                let defaluts = UserDefaults.standard
                defaluts.removeObject(forKey: key)
                defaluts.synchronize()
            }
        }
    }

    public subscript(rawValue: String) -> UserDefaultType? {
        get {
            return get(rawValue)
        }

        set {
            if let value = newValue {
                set(rawValue, value: value)
            } else {
                let defaluts = UserDefaults.standard
                defaluts.removeObject(forKey: rawValue)
                defaluts.synchronize()
            }
        }
    }

    private func get(_ rawValue: String) -> UserDefaultType? {
        guard let type = type else { return nil }

        let defaluts = UserDefaults.standard
        switch type {
        case .object:
            return defaluts.object(forKey: rawValue) as? UserDefaultType
        case .dictionary:
            return defaluts.dictionary(forKey: rawValue) as? UserDefaultType
        case .array:
            return defaluts.array(forKey: rawValue) as? UserDefaultType
        case .data:
            return defaluts.data(forKey: rawValue) as? UserDefaultType
        case .date:
            return defaluts.object(forKey: rawValue) as? UserDefaultType
        case .string:
            return defaluts.string(forKey: rawValue) as? UserDefaultType
        case .int:
            return defaluts.integer(forKey: rawValue) as? UserDefaultType
        case .double:
            return defaluts.double(forKey: rawValue) as? UserDefaultType
        case .float:
            return defaluts.float(forKey: rawValue) as? UserDefaultType
        case .url:
            return defaluts.url(forKey: rawValue) as? UserDefaultType
        case .bool:
            return defaluts.bool(forKey: rawValue) as? UserDefaultType
        case .stringArr:
            return defaluts.stringArray(forKey: rawValue) as? UserDefaultType
        }
    }

    private func set(_ key: String, value: Any) {
        let defaluts = UserDefaults.standard
        guard value is UserDefaultType else {
            fatalError("UserDefaultType provide value Invalid")
        }
        switch value {
        case let value as Int:
            defaluts.set(value, forKey: key)
        case let value as Float:
            defaluts.set(value, forKey: key)
        case let value as CGFloat:
            defaluts.set(Float(value), forKey: key)
        case let value as Double :
            defaluts.set(value, forKey: key)
        case let value as Bool:
            defaluts.set(value, forKey: key)
        case let value as URL:
            defaluts.set(value, forKey: key)
        default:
            defaluts.set(value, forKey: key)
        }
        defaluts.synchronize()
    }
}

extension UserDefaultsItem : CustomDebugStringConvertible {
    public var debugDescription: String {
        return "UserDefaultsItem store \(key) of type \(String(describing: type ?? nil)))"
    }
}
