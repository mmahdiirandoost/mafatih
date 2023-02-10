//
//  sooreh2.swift
//  Mafatih
//
//  Created by Mahdi on 14/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

import UIKit

class molhaghat2 : UIViewController {
    
    
    
    
    @IBOutlet weak var textq: UITextView!
    var tr : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(tr!)
        
        if (tr == "سوره عنکبوت"){
            let path = "/Users/User/Desktop/Mafatih/Mafatih/mah.txt"
            
            
            let content  = String (contentsOfFile: path , encoding: NSUTF8StringEncoding , error: nil)
                textq!.text! = content!
            
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
