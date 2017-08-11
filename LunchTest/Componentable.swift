//
//  Componentable.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest

public protocol Componentable {
    var app: XCUIApplication { get }
    init(app: XCUIApplication)
}
