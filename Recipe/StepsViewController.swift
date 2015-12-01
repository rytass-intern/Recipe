//
//  StepsViewController.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/4.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class StepsViewController: UIViewController, UIScrollViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
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
        
        // view1
        let view1 = UIView(frame: CGRectMake(0, 0, pageWidth, pageHeight))
        
        view1.backgroundColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1)
        
        let label1  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        
        label1.text = " Step 1"
        
        label1.textColor = UIColor.whiteColor()
        
        let description1 = UITextField(frame: CGRect(x: 28,y: 65,width: pageWidth/1.2,height: pageHeight/2.5))
        
        description1.backgroundColor = UIColor.whiteColor()
        
        // view2
        let view2 = UIView(frame: CGRectMake(pageWidth, 0, pageWidth, pageHeight))
        
        view2.backgroundColor = UIColor(red: 241/255, green: 196/255, blue: 15/255, alpha: 1)
        
        let label2  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        
        label2.text = " Step 2"
        
        label2.textColor = UIColor.whiteColor()
        
        let description2 = UITextField(frame: CGRect(x: 28,y: 65,width: pageWidth/1.2,height: pageHeight/2.5))
        
        description2.backgroundColor = UIColor.whiteColor()
        
        // view3
        let view3 = UIView(frame: CGRectMake(2*pageWidth, 0, pageWidth, pageHeight))
        
        view3.backgroundColor = UIColor(red: 26/255, green: 188/255, blue: 156/255, alpha: 1)
        
        
        let label3  = UILabel(frame: CGRect(x: 28,y: 0,width: pageWidth/4,height: pageHeight/5))
        
        label3.text = " Step 3"
        
        label3.textColor = UIColor.whiteColor()
        
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
        
        // 新增選擇相冊按鈕
        let button   = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake(28, 260, pageWidth/2, pageHeight/11)
        button.backgroundColor = UIColor.grayColor()
        button.setTitle("choose photo", forState: UIControlState.Normal)
        button.addTarget(self, action: "fromAlbum:", forControlEvents: UIControlEvents.TouchUpInside)
        view1.addSubview(button)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    // 選取相冊
    @IBAction func fromAlbum(sender: AnyObject ) {
        //判斷設置是否支持圖片庫
        
        if UIImagePickerController .isSourceTypeAvailable(. PhotoLibrary ){
            //初始化圖片控制器
            let picker = UIImagePickerController ()
            //設置代理
            picker.delegate = self
            //指定圖片控制器類型
            picker.sourceType = UIImagePickerControllerSourceType . PhotoLibrary
            //設置是否允許編輯
            self .presentViewController(picker, animated: true , completion: {
                () -> Void in
            })
        } else {
            print ( "讀取相冊錯誤" )
        }
        
    }
    
    //選擇圖片成功後代理
    func imagePickerController(picker: UIImagePickerController ,
        didFinishPickingMediaWithInfo info: [ String : AnyObject ]) {
            
            //查看info對象
            print (info)
            //獲取選擇的原圖
            let image = info[ UIImagePickerControllerOriginalImage ] as! UIImage
            imageView.image = image
            
            //圖片控制器退出
            picker.dismissViewControllerAnimated( true , completion: {
                () -> Void in
            })
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
