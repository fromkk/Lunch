//
//  LunchViewControllerTests.swift
//  LunchSampleUITests
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

class LunchViewControllerTests: XCTestCase, ViewControllerTestable {
    
    var viewControllerName: String {
        return ViewControllerNames.lunchViewController.rawValue
    }
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    func testLunchLabel() {
        let launcher = Launcher(targetViewController: self, userInfo: ["MOCK_JSON": "{\"hoge\": \"fuga\"}"])
        let app = launcher.launch()
        
        let pageObjects = LunchViewControllerPage(app: app)
        XCTAssertTrue(pageObjects.lunchLabel.exists)
        XCTAssertEqual(pageObjects.lunchLabel.label, "Lunch")
    }
}
