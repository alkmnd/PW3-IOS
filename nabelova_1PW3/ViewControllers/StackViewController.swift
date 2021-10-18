//
//  StackViewController.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit
class StackViewController: UIViewController {
    private var stack: UIStackView!
    private var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        setupScrollView()
        setupStackView()
        setUpAlarmViews()
    }
    private func setupScrollView() {
        scroll = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.height - 20))
        view.addSubview(scroll)
        scroll.pinTop(to: view.topAnchor)
        scroll.pinBottom(to: view.bottomAnchor)
        scroll.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scroll.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scroll.contentSize = CGSize(
            width:
                self.scroll.frame.width,
            height: stack.frame.height)
        scroll.alwaysBounceVertical = true
    }
    private func setupStackView() {
        let stack = UIStackView(frame: CGRect(x: 10, y: 10, width: view.frame.width - 20, height: view.frame.height - 20))
        scroll.addSubview(stack)
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.pinTop(to: scroll.topAnchor)
        stack.leftAnchor.constraint(equalTo: scroll.leftAnchor).isActive = true
        stack.rightAnchor.constraint(equalTo: scroll.rightAnchor).isActive = true
        stack.pinBottom(to: scroll.bottomAnchor)
        stack.widthAnchor.constraint(equalTo: scroll.widthAnchor).isActive = true
        stack.backgroundColor = .black
        self.stack = stack
        
    }
    private func setUpAlarmViews() {
        var cell: StackCell = StackCell()
        var top = 10
        for _ in 0...200 {
            cell = StackCell()
            //view.addSubview(cell)
            cell.setHeight(to: 40)
            cell.layer.masksToBounds = true
            cell.setHeight(to: Double(stack.frame.height)/10)
            cell.translatesAutoresizingMaskIntoConstraints = false
            stack.addArrangedSubview(cell)
//            cell.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
//            cell.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
//            cell.pin(to: view, .left, .right)
            cell.topAnchor.constraint(equalTo: stack.topAnchor, constant: CGFloat(top)).isActive = true
            top += 50
        }
    }
    
}

