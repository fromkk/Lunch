//
//  BreakfastViewControllerTests.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/12.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

class BreakfastViewControllerTests: XCTestCase, ViewControllerTestable {
    var viewControllerName: String {
        return "BreakfastViewController"
    }
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    func testMock() {
        let launcher = Launcher(targetViewController: self, userInfo: [
                "MOCK_JSON": "{\"menu\": \"Bread\"}"
            ])
        let app = launcher.launch()
        let page = BreakfastViewControllerPage(app: app)
        XCTAssertTrue(page.menuLabel.exists)
        XCTAssertEqual(page.menuLabel.label, "Bread")
    }
}
