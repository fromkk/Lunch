//
//  Creator.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import Foundation
import Lunch

struct Creator: Creatable {
    func create<T>(_ identifier: String, userInfo: [AnyHashable : Any]?) -> T? {
        switch identifier {
        case "BreakfastViewController":
            let model: MenuModel
            if let data = (userInfo?["MOCK_JSON"] as? String)?.data(using: .utf8),
            let json: [String: String] = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: String] {
                model = MenuModel(menu: json["menu"] ?? "")
            } else {
                model = MenuModel(menu: "")
            }
            return self.breakfastViewController(menu: model) as? T
        case "LunchViewController":
            return self.lunchViewController() as? T
        case "DinnerViewController":
            return self.dinnerViewController() as? T
        default:
            return nil
        }
    }
}

extension Creator {
    func breakfastViewController(menu: MenuRepresentable) -> BreakfastViewController {
        return BreakfastViewController(menuModel: menu)
    }
    
    func lunchViewController() -> LunchViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateInitialViewController() as! LunchViewController
    }
    
    func dinnerViewController() -> DinnerViewController {
        return DinnerViewController()
    }
}
