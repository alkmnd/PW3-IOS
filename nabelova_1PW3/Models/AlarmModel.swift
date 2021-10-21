//
//  AlarmView.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
import UIKit

class AlarmModel : UIView {
    let toggle: UISwitch = {
        let toggle = UISwitch()
        return toggle
    }()
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
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = UIColor.systemGray2
        label.text = "00:00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
   
    func setupToggle() {
        backgroundColor = UIColor.black
        addSubview(toggle)
        addSubview(timeLabel)
        toggle.backgroundColor = UIColor.black
        toggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        toggle.pinTop(to: topAnchor, 10)
        toggle.setHeight(to: 40)
        toggle.setWidth(to: 40)
        timeLabel.pinTop(to: topAnchor, 10)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        toggle.addTarget(self, action: #selector(locationToggleSwitched),for: .valueChanged)
        
    
    }
    @objc
    func locationToggleSwitched(_ sender: UISwitch) {
        if sender.isOn {
            if(timeLabel.textColor == .systemGray2)
            {
                timeLabel.textColor = UIColor.white
            } else {
                timeLabel.textColor = UIColor.black
            }
        } else {
            
            if(timeLabel.textColor == .white)
            {
                timeLabel.textColor = UIColor.systemGray2
            } else {
                timeLabel.textColor = UIColor.systemGray4
            }
           
        }
    }
}
