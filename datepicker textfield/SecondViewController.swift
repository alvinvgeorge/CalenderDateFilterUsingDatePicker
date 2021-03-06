//
//  SecondViewController.swift
//  datepicker textfield
//
//  Created by apple on 05/07/17.
//  Copyright © 2017 Apoorv Mote. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIChooseDatePickerDataDelegate {
    
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    @IBAction func chooseDatesButtonClicked(_ sender: Any) {
        
        showCustomDatePicker(currentViewControllerIdentifier: "secondViewController")
                
    }
    func showCustomDatePicker(currentViewControllerIdentifier : String?)
    {
        let datePickerView = self.storyboard?.instantiateViewController(withIdentifier: "chooseDatesController") as! ChooseDatesController
        //datePickerView.pickerViewItems = pickerViewItems
        datePickerView.currentViewController = currentViewControllerIdentifier!
        
        //datePickerView.minimumDate =
        
        datePickerView.delegate =  self
        datePickerView.modalPresentationStyle = .overCurrentContext
        self.present(datePickerView, animated: true, completion: nil)
        
    }
    func getStartAndEndDates(startDate: String?, endDate: String?) {
        
        startDateLabel.text =  "start Date : " + startDate!
        endDateLabel.text =  "end Date : " + endDate!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
