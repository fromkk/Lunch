//
//  DinnerViewControllerComponents.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

struct DinnerViewControllerComponents: Componentable {
    var app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var dinnerLabel: XCUIElement {
        return self.app.staticTexts["dinnerLabel"]
    }
}
