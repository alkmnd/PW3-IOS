//
//  StackCell.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit

class StackCell: UIView
{
    var alarm: AlarmModel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.alarm = AlarmModel(frame: self.bounds)
        addSubview(alarm)
        alarm.autoresizingMask = self.autoresizingMask

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
