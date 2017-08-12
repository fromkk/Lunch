
//
//  MenuRepresentable.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/12.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation

protocol MenuRepresentable {
    var menu: String { get }
}

struct MenuModel: MenuRepresentable {
    var menu: String
}
