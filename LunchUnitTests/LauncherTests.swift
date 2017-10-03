//
//  LauncherTests.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/18.
//  Copyright © 2017 fromKK. All rights reserved.
//

import XCTest
@testable import Lunch

class LauncherTests: XCTestCase {
    
    struct Object: Equatable {
        var value: String?
    
        static func == (lhs: Object, rhs: Object) -> Bool {
            return lhs.value == rhs.value
        }
    }
    
    struct Creator: Creatable {
        func create<T>(_ identifier: String, userInfo: [AnyHashable : Any]?) -> T? {
            if "Object" == identifier {
                return Object(value: userInfo?["value"] as? String) as? T
            }
            
            return nil
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
        XCTAssertNil(Creator().create("Test", userInfo: nil))
        
        XCTAssertEqual(Object(), Creator().create("Object", userInfo: nil))
        
        XCTAssertEqual(Object(value: "Hello"), Creator().create("Object", userInfo: ["value": "Hello"]))
    }
    
}
