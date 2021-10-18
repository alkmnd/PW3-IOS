//
//  TimeModel.swift
//  nabelova_1PW3
//
//  Created by Наталья Белова on 18.10.2021.
//

import Foundation
public class TimeModel {
    private var time: Time
    
    init() {
        time = Time(hours: Int.random(in: 0..<24), minutes: Int.random(in: 0..<60), seconds: Int.random(in: 0..<60))
    }
    
    public func setupTime() -> String {
        var timeInString = String(time.hours) + ":"
        if (time.minutes < 10)
        {
            timeInString += "0"
        }
        return timeInString + String(time.minutes);
    }
}
public struct Time {
    var hours: Int
    var minutes: Int

    init(hours: Int = 0, minutes: Int = 0, seconds: Int = 0) {
        self.hours = hours
        self.minutes = minutes
    }
    
    func toString() -> String {
        return String(hours) + ":" + String(minutes)
    }
}


