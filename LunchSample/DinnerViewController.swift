//
//  DinnerViewController.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import UIKit

class DinnerViewController: UIViewController {
    lazy var dinnerLabel: UILabel = {
        let label = UILabel()
        label.text = "Dinner"
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "dinnerLabel"
        return label
    }()
    
    override func loadView() {
        super.loadView()
        
        self.view.addSubview(self.dinnerLabel)
        self.layoutDinnerLabel()
    }
    
    private func layoutDinnerLabel() {
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self.dinnerLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: self.dinnerLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0),
            ])
    }
}
