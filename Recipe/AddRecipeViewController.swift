//
//  AddRecipeViewController.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/4.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var types = ["點心烘焙","米食","麵食","湯品","副餐"]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return types[row]
        
    }
}
