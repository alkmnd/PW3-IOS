//
//  CollectionViewController.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit
class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    private var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        setupCollectionView()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    private func setupCollectionView() {
        let layoutFlow = UICollectionViewFlowLayout()
        layoutFlow.sectionInset = UIEdgeInsets(top: 10, left: 60, bottom: 25, right: 60)
        layoutFlow.itemSize = CGSize(width: view.frame.width - 60, height: view.frame.height / 15)
        layoutFlow.scrollDirection = .horizontal
//        layoutFlow.sectionInset = UIEdgeInsets(top: 20, left: 10,
//                                               bottom: 10, right: 10)
//        layoutFlow.itemSize = CGSize(width: 60, height: 60)
        let collection = UICollectionView(frame: .zero,
                                          collectionViewLayout: layoutFlow)
        view.addSubview(collection)
        collection.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        collection.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        collection.pin(to: view, .left, .right)
        collection.backgroundColor = .systemTeal
        self.collection = collection
        collection.dataSource = self
        collection.delegate = self
        collection.register(CollectionCell.self, forCellWithReuseIdentifier: "cellView")
        collection.showsVerticalScrollIndicator = true
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.layer.masksToBounds = true
        self.view.addSubview(collection)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellView", for: indexPath) as! CollectionCell
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.alarm.timeLabel.textColor = .systemGray4
        cell.alarm.toggle.backgroundColor = .white
        cell.alarm.backgroundColor = .white
        return cell
    }
}
