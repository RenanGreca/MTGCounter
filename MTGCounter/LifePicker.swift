//
//  LifePicker.swift
//  MTGCounter
//
//  Created by Renan Greca on 5/29/16.
//  Copyright © 2016 renangreca. All rights reserved.
//

import UIKit

class LifePicker: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    var lifeCounter = 20;
    var picker = UIPickerView();
    
    let max = 30
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return max
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let view = UIView(frame: CGRectMake(0, 0, 270, 100))
        let label = UILabel(frame: CGRectMake(60, 0, 210, 100 ))
        label.textColor = UIColor.blackColor()
        label.font = UIFont(name: label.font.fontName, size: 50)
        label.text = "\(row)"
        
        view.addSubview(label)
        return view
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.lifeCounter = row;
    }
    
    func plusOne() {
        if (lifeCounter+1 > max-1) {
            self.lifeCounter = max
        } else {
            self.lifeCounter += 1
        }
        self.picker.selectRow(lifeCounter, inComponent: 0, animated: true)
    }
    
    func plusFive() {
        print(lifeCounter)
        if (lifeCounter+5 >= max) {
            self.lifeCounter = max-1
        } else {
            self.lifeCounter += 5
        }
        print(lifeCounter)
        self.picker.selectRow(lifeCounter, inComponent: 0, animated: true)
    }
    
    func minusOne() {
        if (lifeCounter-1 < 0) {
            self.lifeCounter = 0
        } else {
            self.lifeCounter -= 1
        }
        self.picker.selectRow(lifeCounter, inComponent: 0, animated: true)
    }
    
    func minusFive() {
        if (lifeCounter-5 < 0) {
            self.lifeCounter = 0
        } else {
            self.lifeCounter -= 5
        }
        self.picker.selectRow(lifeCounter, inComponent: 0, animated: true)
    }

}
