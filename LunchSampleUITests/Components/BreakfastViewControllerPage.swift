//
//  BreakfastViewControllerPage.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/12.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

struct BreakfastViewControllerPage: PageObjectsRepresentable {
    var app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var menuLabel: XCUIElement {
        return self.app.staticTexts["menuLabel"]
    }
}
