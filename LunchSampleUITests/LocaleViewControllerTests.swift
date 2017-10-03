//
//  LocaleViewControllerTests.swift
//  LunchSampleUITests
//
//  Created by Kazuya Ueoka on 2017/10/03.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
import LunchTest

class LocaleViewControllerTests: XCTestCase, ViewControllerTestable {
    
    var viewControllerName: String {
        return ViewControllerNames.localeViewController.rawValue
    }
    
    func testJa_JP() {
        
        let app = Launcher(targetViewController: self, locale: "ja-JP", userInfo: nil).launch()
        let page = LocaleViewControllerPage(app: app)
        
        XCTContext.runActivity(named: "languageLabelの値がjaである事を確認する") { (_) in
            XCTAssertTrue(page.languageLabel.exists)
            XCTAssertEqual(page.languageLabel.label, "ja")
        }
        
        XCTContext.runActivity(named: "regionLabelの値がJPである事を確認する") { (_) in
            XCTAssertTrue(page.regionLabel.exists)
            XCTAssertEqual(page.regionLabel.label, "JP")
        }
        
        XCTContext.runActivity(named: "localeLabelの値がja-JPである事を確認する") { (_) in
            XCTAssertTrue(page.localeLabel.exists)
            XCTAssertEqual(page.localeLabel.label, "ja-JP")
        }
    }
    
    func testEn_US() {
        
        let app = Launcher(targetViewController: self, locale: "en-US", userInfo: nil).launch()
        let page = LocaleViewControllerPage(app: app)
        
        XCTContext.runActivity(named: "languageLabelの値がenである事を確認する") { (_) in
            XCTAssertTrue(page.languageLabel.exists)
            XCTAssertEqual(page.languageLabel.label, "en")
        }
        
        XCTContext.runActivity(named: "regionLabelの値がUSである事を確認する") { (_) in
            XCTAssertTrue(page.regionLabel.exists)
            XCTAssertEqual(page.regionLabel.label, "US")
        }
        
        XCTContext.runActivity(named: "localeLabelの値がen-USである事を確認する") { (_) in
            XCTAssertTrue(page.localeLabel.exists)
            XCTAssertEqual(page.localeLabel.label, "en-US")
        }
    }
}
