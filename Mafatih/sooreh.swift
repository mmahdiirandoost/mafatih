//
//  sooreh.swift
//  Mafatih
//
//  Created by Mahdi on 13/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

import UIKit

class sooreh: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let swiftBlogs = ["سوره عنکبوت" ,"سوره روم" ,"سوره دخان" ,"سوره یس", "سوره الرحمن" , "سوره واقعه", "سوره ملک","سوره انسان","سوره نبا","سوره اعلی","سوره شمس","سوره قدر","سوره زلزله","سوره عادیات","سوره تکاثر","سوره کافرون","سوره نصر","سوره اخلاص","سوره فلق","سوره ناس"]
    
    let textCellidentifier = "textCell"
    
    let blogSegueIdentifier = "man1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "man1")  {
            let svc = segue.destinationViewController as? sooreh2;
            let cel = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cel)!.row
            svc!.tr = swiftBlogs[selectedRow]
            
            
            
        }
        
    }
    
    
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftBlogs.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellidentifier, forIndexPath:indexPath) as! UITableViewCell
        let row = indexPath.row
        cell.textLabel?.text = swiftBlogs[row]
        return cell
    }
    
    //func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //  tableView.deselectRowAtIndexPath(indexPath, animated: true)
    //      let row = swiftBlogs [indexPath.row]
    
    //        print(row)
    
    // }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}