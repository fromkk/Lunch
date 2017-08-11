//
//  PageObjectsRepresentable.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest

public protocol PageObjectsRepresentable {
    var app: XCUIApplication { get set }
    init(app: XCUIApplication)
}
