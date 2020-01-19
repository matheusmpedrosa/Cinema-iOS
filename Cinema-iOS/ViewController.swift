//
//  ViewController.swift
//  Cinema-iOS
//
//  Created by Matheus Pedrosa on 10/27/19.
//  Copyright © 2019 matheusmpedrosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var headerView = UIView(frame: .zero)
    private var stackView = UIStackView()
    
    lazy private var logoImage: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = #imageLiteral(resourceName: "cinema-logo")
        return image
    }()
    
    lazy private var moviesButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("MOVIES", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9450980392, green: 0.631372549, blue: 0.2117647059, alpha: 1), for: .selected)
        button.titleLabel?.setRegularFont()
        return button
    }()
    
    lazy private var tvShowsButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("TV SHOWS", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9450980392, green: 0.631372549, blue: 0.2117647059, alpha: 1), for: .selected)
        button.titleLabel?.setRegularFont()
        return button
    }()
    
    lazy private var peopleButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("PEOPLE", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9450980392, green: 0.631372549, blue: 0.2117647059, alpha: 1), for: .selected)
        button.titleLabel?.setRegularFont()
        return button
    }()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.003921568627, blue: 0, alpha: 1)
        setupView()
    }
    
    // MARK: - View Setup
    private func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupStackView()
    }
    
    private func setupStackView() {
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
    }
    
    private func buildViewHierarchy() {
        stackView.addArrangedSubview(logoImage)
        stackView.addArrangedSubview(moviesButton)
        stackView.addArrangedSubview(tvShowsButton)
        stackView.addArrangedSubview(peopleButton)
        
        headerView.addSubview(stackView)
        view.addSubview(headerView)
    }
    
    private func setupConstraints() {
        logoImage.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 70, height: 70)
        moviesButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        tvShowsButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        peopleButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        stackView.anchor(top: headerView.topAnchor, paddingTop: 0, bottom: headerView.bottomAnchor, paddingBottom: 0, left: headerView.leftAnchor, paddingLeft: 0, right: headerView.rightAnchor, paddingRight: 0, width: 0, height: 0)
        headerView.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0, bottom: nil, paddingBottom: 0, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 20, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 20, width: 0, height: 70)
    }
    
    // MARK: - Actions
    @objc
    private func moviesButtonWasTapped() {
        print("moviesButtonWasTapped()")
    }
    
    @objc
    private func tvShowsButtonWasTapped() {
        print("tvShowsButtonWasTapped()")
    }
    
    @objc
    private func peopleButtonWasTapped() {
        print("peopleButtonWasTapped()")
    }
}

