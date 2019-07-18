//
//  Launcher.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation
import XCTest

public struct LaunchKeys {
    public static let viewController: String = "LAUNCH_VIEW_CONTROLLER"
    public static let userInfo: String = "LAUNCH_USER_INFO"
}

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
    
    private var language: String? {
        let locales: [String]?
        if locale.contains("-") {
            locales = locale.components(separatedBy: "-")
        } else if locale.contains("_") {
            locales = locale.components(separatedBy: "_")
        } else {
            locales = nil
        }
        
        return locales?.first
    }
    
    private var arguments: [String] {
        var result: [String] = []
        if let language = self.language {
            result.append(contentsOf: [
                "-AppleLanguages", "(\(language))",
                ])
        }
        
        result.append(contentsOf: [
            "-AppleLocale", self.locale,
            ])
        
        return result
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
