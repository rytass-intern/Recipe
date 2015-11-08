//
//  StepsViewController.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/4.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class StepsViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stepsPageControl: UIPageControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let pageWidth = scrollView.bounds.width
        let pageHeight = scrollView.bounds.height
        
        scrollView.contentSize = CGSizeMake(3*pageWidth, pageHeight)
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self
        stepsPageControl.numberOfPages = 3
        
        let view1 = UIView(frame: CGRectMake(0, 0, pageWidth, pageHeight))
        view1.backgroundColor = UIColor.blueColor()
        
        let label1  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        label1.text = "Step 1"
        
        let description1 = UITextField(frame: CGRect(x: 28,y: 65,width: pageWidth/1.2,height: pageHeight/2.5))
        description1.backgroundColor = UIColor.whiteColor()
        
        let view2 = UIView(frame: CGRectMake(pageWidth, 0, pageWidth, pageHeight))
        view2.backgroundColor = UIColor.orangeColor()
        
        let label2  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        label2.text = "Step 2"
        
        let description2 = UITextField(frame: CGRect(x: 28,y: 65,width: pageWidth/1.2,height: pageHeight/2.5))
        description2.backgroundColor = UIColor.whiteColor()



        let view3 = UIView(frame: CGRectMake(2*pageWidth, 0, pageWidth, pageHeight))
        view3.backgroundColor = UIColor.purpleColor()
        
        let label3  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        label3.text = "Step 3"
        
        let description3 = UITextField(frame: CGRect(x: 28,y: 65,width: pageWidth/1.2,height: pageHeight/2.5))
        description3.backgroundColor = UIColor.whiteColor()

    
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        view1.addSubview(label1)
        view2.addSubview(label2)
        view3.addSubview(label3)
        view1.addSubview(description1)
        view2.addSubview(description2)
        view3.addSubview(description3)
      
    }
  
    @IBAction func pageControlDidPage(sender: AnyObject) {
        let xOffset = scrollView.bounds.width * CGFloat(stepsPageControl.currentPage)
       scrollView.setContentOffset(CGPointMake(xOffset,0) , animated: true)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        stepsPageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
