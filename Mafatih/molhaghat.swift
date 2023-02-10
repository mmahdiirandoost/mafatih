//
//  sooreh.swift
//  Mafatih
//
//  Created by Mahdi on 13/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

import UIKit

class molhaghat: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let swiftBlogs = ["سوره عنکبوت" ,"سوره روم" ,"سوره دخان" ,"سوره یس", "سوره الرحمن" , "سوره واقعه", "سوره ملک","سوره انسان","سوره نبا","سوره اعلی","سوره شمس","سوره قدر","سوره زلزله","سوره عادیات","سوره تکاثر","سوره کافرون","سوره نصر","سوره اخلاص","سوره فلق","سوره ناس"]
    
    
    
    let swiftblogo = [ "salam", "sd"]
    
    
    let textCellidentifier = "textCell5"
    
    let blogSegueIdentifier = "man5"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "man5")  {
            let svc = segue.destinationViewController as? molhaghat2;
            let cel = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cel)!.row
            svc!.tr = cel.textLabel?.text
            
            
            
        }
        
    }
    
    
    let data = [
    
        ["مقدمه", "وداع ماه مبارک رمضان", "خطبه روز عید فطر","زیارت جامعه ائمة المومنین","دعای عالیة المضامین","زیارت وداع هر یک از ائمة(علیهم السلام)","رقعه ای که برای حاجت می نویسند","دعایی که در زمان غیبت باید خواند","آداب زیارت به نیابت"]
        ,
        ["زیارت دیگر حضرت جواد(ع)","دعای بعد از نماز زیارت حضرت جواد(ع)","زیارت امام زادگان","زیارت دیگر از برای اولاد ائمة(علیهم السلام)","دعای مکارم الاخلاق","حدیث شریف کساء"]
        
    
    
    ]
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellText = data[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellidentifier, forIndexPath:indexPath) as! UITableViewCell
        cell.textLabel?.text = cellText
        return cell
        //  Now do whatever you were going to do with the title.
    }
    
    
    
    
    let headerTitles = ["ملحقات", "ملحقات دوم"]
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}