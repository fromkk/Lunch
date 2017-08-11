//
//  DinnerViewControllerTests.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

class DinnerViewControllerTests: XCTestCase, ViewControllerTestable {
    
    var viewControllerName: String {
        return "DinnerViewController"
    }
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    func testLunchLabel() {
        let launcher = Launcher(targetViewController: self)
        let app = launcher.launch()
        
        let components = DinnerViewControllerComponents(app: app)
        XCTAssertTrue(components.dinnerLabel.exists)
        XCTAssertEqual(components.dinnerLabel.label, "Dinner")
    }
}
