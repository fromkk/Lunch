//
//  Chef.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation
import Lunch

struct Chef: Cookable {
    func cook<T>(_ identifier: String, userInfo: [AnyHashable : Any]?) -> T? {
        switch identifier {
        case "LunchViewController":
            return self.lunchViewController() as? T
        case "DinnerViewController":
            return self.dinnerViewController() as? T
        default:
            return nil
        }
    }
}

extension Chef {
    func lunchViewController() -> LunchViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateInitialViewController() as! LunchViewController
    }
    
    func dinnerViewController() -> DinnerViewController {
        return DinnerViewController()
    }
}
