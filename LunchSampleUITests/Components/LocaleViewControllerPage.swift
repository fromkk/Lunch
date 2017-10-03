//
//  LocaleViewControllerPage.swift
//  LunchSampleUITests
//
//  Created by Kazuya Ueoka on 2017/10/03.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation
import XCTest
import LunchTest

struct LocaleViewControllerPage: PageObjectsRepresentable {
    
    var app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var languageLabel: XCUIElement {
        return app.staticTexts["languageLabel"]
    }
    
    var regionLabel: XCUIElement {
        return app.staticTexts["regionLabel"]
    }
    
    var localeLabel: XCUIElement {
        return app.staticTexts["localeLabel"]
    }
    
}
