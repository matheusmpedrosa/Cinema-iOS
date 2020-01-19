//
//  MenuView.swift
//  Cinema-iOS
//
//  Created by Matheus Pedrosa on 19/01/20.
//  Copyright © 2020 matheusmpedrosa. All rights reserved.
//

import UIKit

enum SelectedMenuItem {
    case movies
    case tvShows
    case people
}

class MenuView: UIView {
    
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
        button.addTarget(self, action: #selector(moviesButtonWasTapped), for: .touchUpInside)
        return button
    }()
    
    lazy private var tvShowsButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("TV SHOWS", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9450980392, green: 0.631372549, blue: 0.2117647059, alpha: 1), for: .selected)
        button.titleLabel?.setRegularFont()
        button.addTarget(self, action: #selector(tvShowsButtonWasTapped), for: .touchUpInside)
        return button
    }()
    
    lazy private var peopleButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("PEOPLE", for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9450980392, green: 0.631372549, blue: 0.2117647059, alpha: 1), for: .selected)
        button.titleLabel?.setRegularFont()
        button.addTarget(self, action: #selector(peopleButtonWasTapped), for: .touchUpInside)
        return button
    }()
    
    private var selectedMenuItem: SelectedMenuItem = .movies

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupStackView()
        manageMenuItems()
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
        
        self.addSubview(stackView)
    }
    
    private func setupConstraints() {
        logoImage.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 70, height: 70)
        moviesButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        tvShowsButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        peopleButton.anchor(top: nil, paddingTop: 0, bottom: nil, paddingBottom: 0, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, width: 0, height: 0)
        stackView.anchor(top: self.topAnchor, paddingTop: 0, bottom: self.bottomAnchor, paddingBottom: 0, left: self.leftAnchor, paddingLeft: 0, right: self.rightAnchor, paddingRight: 0, width: 0, height: 0)
    }
    
    @objc
    private func moviesButtonWasTapped() {
        print("moviesButtonWasTapped()")
        selectedMenuItem = .movies
        manageMenuItems()
    }
    
    @objc
    private func tvShowsButtonWasTapped() {
        print("tvShowsButtonWasTapped()")
        selectedMenuItem = .tvShows
        manageMenuItems()
    }
    
    @objc
    private func peopleButtonWasTapped() {
        print("peopleButtonWasTapped()")
        selectedMenuItem = .people
        manageMenuItems()
    }
    
    private func manageMenuItems() {
        switch selectedMenuItem {
        case .movies:
            moviesButton.isSelected = true
            tvShowsButton.isSelected = false
            peopleButton.isSelected = false
        case .tvShows:
            moviesButton.isSelected = false
            tvShowsButton.isSelected = true
            peopleButton.isSelected = false
        case .people:
            moviesButton.isSelected = false
            tvShowsButton.isSelected = false
            peopleButton.isSelected = true
        }
    }

}
