//
//  TableViewController.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit
class TableViewController: UIViewController {

    private var table: UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemYellow
        setupTableView()
        
        
        
    }
    private func setupTableView() {
        let table = UITableView(frame: .zero)
        view.addSubview(table)
        table.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        table.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        table.pin(to: view, .left, .right)
        table.backgroundColor = .white
        self.table = table
        
    }
}
