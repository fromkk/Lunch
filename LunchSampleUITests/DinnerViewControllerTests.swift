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
        return ViewControllerNames.dinnerViewController.rawValue
    }
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    func testLunchLabel() {
        let launcher = Launcher(targetViewController: self)
        let app = launcher.launch()
        
        let pageObjects = DinnerViewControllerPage(app: app)
        XCTAssertTrue(pageObjects.dinnerLabel.exists)
        XCTAssertEqual(pageObjects.dinnerLabel.label, "Dinner")
    }
}
