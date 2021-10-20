//
//  TableViewController.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit
class TableViewController: UIViewController {
    
    private var alarms: [AlarmModel] = []
    private var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemPurple
        setupTableView()
        for _ in 0...200 { alarms.append(
            AlarmModel())
        }
       
        
    }
    
    private func setupTableView() {
        let table = UITableView(frame: .zero)
        view.addSubview(table)
        table.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        table.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        table.pin(to: view, .left, .right)
        table.backgroundColor = .white
        self.table = table
        table.register(TableCell.self, forCellReuseIdentifier: "tableCell")
        table.dataSource = self
        table.setHeight(to: 70)
        table.rowHeight = 70
        table.backgroundColor = .black
        func tableView(_ tableView: UITableView, numberOfRowsInSection
                            section: Int) -> Int {200}
        func numberOfSections(in tableView: UITableView) -> Int {1}
        
        
    }

}
extension TableViewController: UITableViewDelegate {


    func tableView(_ tableView: UITableView, numberOfRowsInSection
                    section: Int) -> Int {200}
    func numberOfSections(in tableView: UITableView) -> Int {1}
}
extension TableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
                    IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "tableCell",
            for: indexPath
        ) as? TableCell
        
        //ell?.setupTableCell()
        return cell ?? UITableViewCell()
        }
}
//final class EyeCell: UITableViewCell {
//    override func prepareForReuse() {
//        for subview in subviews {
//            if subview is UIImageView {
//                subview.removeFromSuperview()
//
//            }
//        }
//    }
//    func setupEye() {
//        setHeight(to: 50)
//        let image = UIImageView()
//        addSubview(image)
//        image.pinLeft(to: self, Double.random(in: 0...400))
//        image.pinTop(to: self, Double.random(in: -20...40))
//        image.image = UIImage(named: "eye")
//        image.setHeight(to: 20)
//        image.setWidth(to: 30)
//
//    }
//}
//
