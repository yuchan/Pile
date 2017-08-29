//
//  Pile.swift
//  Pile
//
//  Created by Yusuke Ohashi on 2017/08/29.
//

import Foundation

public enum TransitionType: String {
    case push = "push"
    case pop = "pop"
    case present = "present"
    case dismiss = "dismiss"
    case popover = "popover"
    case appear = "appear"
}

open class Pile {
    static var shared = Pile()
    static var stacks = [[String: Any]]()
    static let limited = 5

    public static func add(vc: UIViewController, action: TransitionType = .appear) {
        if stacks.count == limited {
            stacks.removeFirst()
        }
        
        stacks.append(["name": NSStringFromClass(vc.classForCoder).components(separatedBy: ".").last!,
                       "action": action.rawValue,
                       "created_at": Date()])
        // we need to persist immediately and clear memory.
    }

    public static func last() -> [String: Any] {
        return stacks.last!
    }
    
    public static func dump() {
        print(stacks)
    }
}
