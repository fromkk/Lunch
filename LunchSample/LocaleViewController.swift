//
//  LocaleViewController.swift
//  LunchSample
//
//  Created by Kazuya Ueoka on 2017/10/03.
//  Copyright © 2017 fromKK. All rights reserved.
//

import UIKit

class LocaleViewController: UIViewController {
    
    lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "languageLabel"
        return label
    }()
    
    lazy var regionLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "regionLabel"
        return label
    }()
    
    lazy var localeLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityIdentifier = "localeLabel"
        return label
    }()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(languageLabel)
        view.addSubview(regionLabel)
        view.addSubview(localeLabel)
        
        NSLayoutConstraint.activate([
            languageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            languageLabel.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 60.0),
            regionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            regionLabel.topAnchor.constraint(equalTo: languageLabel.bottomAnchor, constant: 32.0),
            localeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            localeLabel.topAnchor.constraint(equalTo: regionLabel.bottomAnchor, constant: 32.0),
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        languageLabel.text = Locale.current.languageCode
        regionLabel.text = Locale.current.regionCode
        localeLabel.text = Locale.current.identifier
    }
}
