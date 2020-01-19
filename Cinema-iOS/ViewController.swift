//
//  ViewController.swift
//  Cinema-iOS
//
//  Created by Matheus Pedrosa on 10/27/19.
//  Copyright © 2019 matheusmpedrosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var menu = MenuView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.003921568627, blue: 0, alpha: 1)
        setupView()
    }
    
    private func setupView() {
        buildViewHierarchy()
        setupConstraints()
        self.isAccessibilityElement = false
    }
    
    private func buildViewHierarchy() {
        view.addSubview(menu)
    }
    
    private func setupConstraints() {
        menu.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0, bottom: nil, paddingBottom: 0, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 20, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 20, width: 0, height: 70)
    }
}

