//
//  Launcher.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation
import XCTest

public class Launcher {
    public var targetViewController: ViewControllerTestable
    public var locale: String
    public var userInfo: [AnyHashable: Any]?
    public lazy var application: XCUIApplication = {
        let app: XCUIApplication = XCUIApplication()
        app.launchEnvironment = env
        app.launchArguments = arguments
        app.launch()
        return app
    }()
    
    public init(targetViewController: ViewControllerTestable, locale: String = "ja-JP", userInfo: [AnyHashable: Any]? = nil) {
        self.targetViewController = targetViewController
        self.locale = locale
        self.userInfo = userInfo
    }
    
    public var env: [String: String] {
        var result: [String: String] = [
            LaunchKeys.viewController: self.targetViewController.viewControllerName
        ]
        
        if let userInfo: [AnyHashable: Any] = self.userInfo {
            if let data: Data = try? JSONSerialization.data(withJSONObject: userInfo, options: []),
                let userInfoString: String = String(data: data, encoding: .utf8) {
                result[LaunchKeys.userInfo] = userInfoString
            }
        }
        
        return result
    }
    
    private var arguments: [String] {
        return [
            "-AppleLanguages", "(\(self.locale))",
            "-AppleLocale", self.locale,
        ]
    }
    
    @discardableResult
    public func launch(_ app: XCUIApplication? = nil) -> XCUIApplication {
        if let app = app {
            app.launch()
            return app
        } else {
            self.application.launch()
            return self.application
        }
    }
}
