//
//  ViewController.swift
//  DatePicker
//
//  Created by Admin on 30/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.date = Date()
//        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(selectDate), for: .valueChanged)
    }
    @IBAction func segment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: datePicker.preferredDatePickerStyle = .compact
                break
        case 1: datePicker.preferredDatePickerStyle = .inline
                break
        case 2: datePicker.preferredDatePickerStyle = .wheels
                break
        default:
            break
        }
    }
    @objc func selectDate(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        let date:String = dateFormatter.string(from: datePicker.date)
        dateLbl.text = "Date : \(date)"
    }

}

