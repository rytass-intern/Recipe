//
//  AddRecipeViewController.swift
//  Recipe
//
//  Created by TinaTien on 2015/11/4.
//  Copyright © 2015年 TinaTien. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
