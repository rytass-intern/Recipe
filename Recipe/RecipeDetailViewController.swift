//
//  RecipeDetailViewController.swift
//  Recipe
//
//  Created by TinaTien on 2015/10/27.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var ingredientView: UIView!
    @IBOutlet weak var stepView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func pageChanged(sender:UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            ingredientView.hidden = false
            stepView.hidden = true
            photoView.hidden = true
        case 1:
            ingredientView.hidden = true
            stepView.hidden = false
            photoView.hidden = true
        case 2:
            ingredientView.hidden = true
            stepView.hidden = true
            photoView.hidden = false

        default:
            break; 
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
