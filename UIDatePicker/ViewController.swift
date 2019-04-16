//
//  ViewController.swift
//  UIDatePicker
//
//  Created by D7702_09 on 2019. 4. 16..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UI의 지역화(locatization)
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        // DatePicker 모드 설종
        myDatePicker.datePickerMode = UIDatePicker.Mode.date
    }
    
    @IBAction func changeDatePicker(_ sender: Any) {
        let selectedData = myDatePicker.date
        print(selectedData)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        outLabel.text = formatter.string(from: selectedData)
    }
}

