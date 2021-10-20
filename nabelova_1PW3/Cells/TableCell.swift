//
//  TableCell.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 19.10.2021.
//

import Foundation
import UIKit

final class TableCell: UITableViewCell {

    var alarm: AlarmModel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.alarm = AlarmModel(frame: self.bounds)
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask
        self.accessoryView = alarm.toggle
        self.accessoryView?.pinRight(to: self, 15)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        override func prepareForReuse() {
            for subview in subviews {
                if subview is AlarmModel {
                   
    
                }
            }
        }
        
    }
    

