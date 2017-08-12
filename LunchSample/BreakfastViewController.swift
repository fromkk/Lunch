//
//  BreakfastViewController.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/12.
//  Copyright © 2017 fromKK. All rights reserved.
//

import UIKit

class BreakfastViewController: UIViewController {
    var menuModel: MenuRepresentable {
        didSet {
            self.menuLabel.text = menuModel.menu
        }
    }
    init(menuModel: MenuRepresentable) {
        self.menuModel = menuModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var menuLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "menuLabel"
        return label
    }()
    
    override func loadView() {
        super.loadView()
        
        self.menuLabel.text = self.menuModel.menu
        self.view.addSubview(self.menuLabel)
        self.layoutMenuLabel()
    }
    
    private func layoutMenuLabel() {
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self.menuLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: self.menuLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 0.0),
            ])
    }
}
