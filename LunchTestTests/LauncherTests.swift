//
//  LauncherTests.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/18.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
@testable import LunchTest

public struct LaunchKeys {
    public static let viewController: String = "LAUNCH_VIEW_CONTROLLER"
    public static let userInfo: String = "LAUNCH_USER_INFO"
}

class LauncherTests: XCTestCase {
    
    struct ObjectLaunchable: ViewControllerTestable {
        var viewControllerName: String {
            return "Object"
        }
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLauncher() {
        let objectLaunchable = ObjectLaunchable()
        
        do {
            let launcher: Launcher = Launcher(targetViewController: objectLaunchable, locale: "ja-JP", userInfo: nil)
            XCTAssertEqual("Object", launcher.env[LaunchKeys.viewController])
            XCTAssertNil(launcher.env[LaunchKeys.userInfo])
        }
        
        do {
            let launcher: Launcher = Launcher(targetViewController: objectLaunchable, locale: "ja-JP", userInfo: ["value": "Hello"])
            XCTAssertEqual("{\"value\":\"Hello\"}", launcher.env[LaunchKeys.userInfo])
        }
    }
    
}
