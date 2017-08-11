//
//  Launcher.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation

public struct Launcher {
    public var cookable: Cookable
    
    public init(with cookable: Cookable) {
        self.cookable = cookable
    }
    
    public func launch<T>() -> T? {
        guard let viewControllerName: String = ProcessInfo.processInfo.environment[LaunchKeys.viewController] else {
            return nil
        }
        
        var userInfo: [AnyHashable: Any]? = nil
        if let userInfoString: String = ProcessInfo.processInfo.environment[LaunchKeys.userInfo],
            let userInfoData: Data = userInfoString.data(using: .utf8) {
            userInfo = (try? JSONSerialization.jsonObject(with: userInfoData, options: [])) as? [AnyHashable : Any]
        }
        
        return self.cookable.cook(viewControllerName, userInfo: userInfo)
    }
}
