//
//  SwitchStatus.swift
//  eluxon
//
//  Created by Eswar Kosuri on 2017-12-06.
//  Copyright © 2017 Eswar Kosuri. All rights reserved.
//

import Foundation
enum SwitchStaus:Togglable{
    case on,off
    mutating func togglable() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
