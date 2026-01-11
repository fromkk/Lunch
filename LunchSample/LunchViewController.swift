//
//  LunchViewController.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/08/11.
//  Copyright © 2017 fromKK. All rights reserved.
//

import UIKit

class LunchViewController: UIViewController {
    private lazy var lunchLabel: UILabel = {
        let label = UILabel()
        label.text = "Lunch"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "lunchLabel"
        return label
    }()

    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        view.addSubview(lunchLabel)
        NSLayoutConstraint.activate([
            lunchLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lunchLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
