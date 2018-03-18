//
//  ViewController.swift
//  DemoObjectLibraryDataPicker
//
//  Created by Chao Shin on 18/03/2018.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myText: UITextField!

    @IBOutlet weak var myDatePickerValue: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mydatePickerAction(_ sender: UIDatePicker) {
        let dateValue = DateFormatter() 
        dateValue.dateFormat = "MM dd EE HH:mm" // 設定要顯示在Text Field的日期時間格式
        myText.text = dateValue.string(from: myDatePickerValue.date) // 更新Text Field的內容
    }
    
}

