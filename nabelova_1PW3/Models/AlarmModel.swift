//
//  AlarmView.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit

class AlarmModel : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        timeLabel.text = timeModel.setupTime()
        setupToggle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public let timeModel = TimeModel()


    let timeLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 30)
        control.textColor = UIColor.systemGray2
        control.text = "00:00"
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    
    func setupToggle() {
        let timeToggle: UISwitch = {
            let toggle = UISwitch()
            return toggle
        }()
        backgroundColor = UIColor.black
        addSubview(timeToggle)
        addSubview(timeLabel)
        timeToggle.backgroundColor = UIColor.black
        timeToggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        timeToggle.pinTop(to: topAnchor, 10)
        timeToggle.setHeight(to: 40)
        timeToggle.setWidth(to: 40)
        timeLabel.pinTop(to: topAnchor, Double(frame.height / 2) + 2)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        timeToggle.addTarget(self, action: #selector(locationToggleSwitched),for: .valueChanged)
        
    
    }
    @objc
    func locationToggleSwitched(_ sender: UISwitch) {
        if sender.isOn {
            timeLabel.textColor = UIColor.orange
        } else {
            timeLabel.textColor = UIColor.systemGray5
        }
    }
}
