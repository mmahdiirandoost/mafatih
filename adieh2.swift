//
//  sooreh2.swift
//  Mafatih
//
//  Created by Mahdi on 14/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

    
    import UIKit
    
    class adieh2 : UIViewController, UITableViewDelegate, UITableViewDataSource  {
        
        
        
       
        @IBOutlet weak var tableView: UITableView!
       
        
        var tr : String?
        
        var items = ["We", "Heart", "Swift"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            print(tr!)
            if (tr == "مقدمه"){
                let path = "/Users/User/Desktop/Mafatih 4/matn/adieh/مقدمه.txt"
                
                    let content  = String (contentsOfFile: path , encoding: NSUTF8StringEncoding , error: nil)
                    let FileArray = content!.componentsSeparatedByString("\r\n")
                    print(FileArray)
                
                
                
                items = FileArray
            }		
            
            
            tableView.delegate = self
            tableView.dataSource = self
            
            
            
        }
        
       
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int
        {
            return 1
        }
        func tableView(tableView: UITableView, numberOfRowsInSection section:
            Int) -> Int
        {
            return self.items.count
        }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            // Allocates a Table View Cell
            let aCell =
            self.tableView.dequeueReusableCellWithIdentifier("textCell222",
                forIndexPath: indexPath) as! UITableViewCell
            // Sets the text of the Label in the Table View Cell
            aCell.textLabel?.text = self.items[indexPath.row]
            return aCell
        }
        
        
        
            
        
             override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
}