//
//  ViewController.swift
//  spdemo
//
//  Created by  yanglc on 15/12/10.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gettt(sender: AnyObject) {
        
        
        var sp = NSUserDefaults.standardUserDefaults();
       var value =  sp.valueForKey("mm");
        
        print(value)
        
    }
    @IBOutlet weak var getout: UIButton!
    
    
    var textField:UITextField!
    @IBAction func save(sender: AnyObject) {
       
        if(textField == nil){
              textField = UITextField();
        }
      
        var dataPicker = UIDatePicker()
        dataPicker.datePickerMode  = .Time;
        dataPicker.locale = NSLocale(localeIdentifier: "zh");
        
        var dateF = NSDateFormatter();
        dateF.dateFormat = "HH:mm"
        dataPicker.date  = dateF.dateFromString("00:00")!;
    
        dataPicker.addTarget(self, action: "valuecc:", forControlEvents: .ValueChanged);
        textField.inputView = dataPicker;
        textField.becomeFirstResponder()
        
        self.view.addSubview(textField);
        
    
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    
        textField.resignFirstResponder()
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

