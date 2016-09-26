//
//  Object1.swift
//  TableViewTutorial
//
//  Created by Volodymyr Romanov on 9/22/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit

class Object1: NSObject {
    private var _name: String
    private var _value: Int
    
    var name: String {
        get {
            return _name
        }
    }
    
    var value: Int {
        get {
            return _value
        }
    }
    
    init(name: String, value: Int) {
        _name = name
        _value = value
    }
}
