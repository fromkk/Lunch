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
        return "LunchViewController"
    }
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    func testLunchLabel() {
        let launcher = Launcher(targetViewController: self)
        let app = launcher.launch()
        
        let components = LunchViewControllerComponents(app: app)
        XCTAssertTrue(components.lunchLabel.exists)
        XCTAssertEqual(components.lunchLabel.label, "Lunch")
    }
}
