//
//  ViewController.swift
//  Cinema-iOS
//
//  Created by Matheus Pedrosa on 10/27/19.
//  Copyright © 2019 matheusmpedrosa. All rights reserved.
//

import UIKit

enum TableViewSections: Int {
    case nowPlaying = 0
    case upcoming = 1
    case popular = 2
}

class ViewController: UIViewController {
    
    private var menu = MenuView(frame: .zero)
    lazy private var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.alwaysBounceVertical = false
        tableView.backgroundColor = .clear
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.003921568627, blue: 0, alpha: 1)
        setupView()
    }
    
    private func setupView() {
        buildViewHierarchy()
        setupConstraints()
        overrideUserInterfaceStyle()
        self.isAccessibilityElement = false
    }
    
    private func buildViewHierarchy() {
        view.addSubview(menu)
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        menu.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 0, bottom: nil, paddingBottom: 0, left: view.safeAreaLayoutGuide.leftAnchor, paddingLeft: 20, right: view.safeAreaLayoutGuide.rightAnchor, paddingRight: 20, width: 0, height: 70)
        tableView.anchor(top: menu.bottomAnchor, paddingTop: 10, bottom: view.bottomAnchor, paddingBottom: 0, left: view.leftAnchor, paddingLeft: 0, right: view.rightAnchor, paddingRight: 0, width: 0, height: 0)
    }
    
    private func overrideUserInterfaceStyle() {
        overrideUserInterfaceStyle = .dark
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.selectionStyle = .none
        cell.textLabel?.setRegularFont()
        cell.backgroundColor = .clear
        switch indexPath.section {
        case TableViewSections.nowPlaying.rawValue:
            cell.textLabel?.text = "Now Playing"
        case TableViewSections.upcoming.rawValue:
            cell.textLabel?.text = "Upcoming"
        case TableViewSections.popular.rawValue:
            cell.textLabel?.text = "Popular"
        default:
            cell.textLabel?.text = "DEFAULT"
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}
