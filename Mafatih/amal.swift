//
//  sooreh.swift
//  Mafatih
//
//  Created by Mahdi on 13/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

import UIKit

class amal: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let swiftBlogs = ["سوره عنکبوت" ,"سوره روم" ,"سوره دخان" ,"سوره یس", "سوره الرحمن" , "سوره واقعه", "سوره ملک","سوره انسان","سوره نبا","سوره اعلی","سوره شمس","سوره قدر","سوره زلزله","سوره عادیات","سوره تکاثر","سوره کافرون","سوره نصر","سوره اخلاص","سوره فلق","سوره ناس"]
    
    
    
    let swiftblogo = [ "salam", "sd"]
    
    
    let textCellidentifier = "textCell3"
    
    let blogSegueIdentifier = "man3"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "man3")  {
            let svc = segue.destinationViewController as? amal2;
            let cel = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cel)!.row
            svc!.tr = cel.textLabel?.text
            
            
            
        }
        
    }
    
    
    let data = [
        
        
        ["در فضیلت و اعمال ماه مبارک رجب","اعمال مشترکه ماه رجب","زیارت رجبیه","سایر اعمال ماه رجب","اعمال لیلة الرغاپب","شب اول رجب","روز اول رجب","شب و روز سیزدهم رجب (ایام البیض)","شب نیمه ماه رجب","روز نیمه ماه رجب","عمل ام داود","روز بیست و پنجم","اعمال شب مبعث ( شب بیستو هقتم","اعمال روز بعثت(روز بیست و هفتم"]
        ,
        
        ["فضیلت و اعمال ماه شعبان","صلوات مشترکه ماه شعبان","صلوات هر روز شعبان","مناجات شعبانیه","روز اول شعبان (در آویختگان به درخت طوبی)","روز سوم شعبان","أخرین دعای امام حسین(ع) در روز عاشورا","شب سیزدهم شعبان","فضیلت و اعمال شب نیمه شعبان","روز نیمه شعبان","در بقیه اعمال ماه شعبان","شب آخر شعبان و شب اول ماه رمضان"]
       
       ,
        
        
        
        
        
        
        
        [ "در فضیلت و اعمال ماه مبارک رمضان","قسم اول: اعمال شب و روز ماه رمضان","دعای حج","اعمال هر روز و شب ماه رمضان","آداب افطار و سایر اعمال شب های ماه رمضان","دعای افتتاح","دعاهای شب های ماه رمضان","نمازی در شب های ماه رمضان","کیفیت هزار رکعت نماز در ماه رمضان","قسم سوم: اعمال سحر های ماه رمضان","دعای سحر معروف","دعای ابو حمزه ثمالی","ایضا دعای سحر","مختصر ترین دعاهای سحر","تسبیحات در سحر","اعمال و دعاهای روز های ماه مبارک رمضان","تسبیحات روز های ماه مبارک رمضان","صلوات هر روز ماه رمضان","اعمال شب اول ماه رمضان","دعای هلال صحیفه مکرمه" ,"بقیه اعمال شب اول" ,"اعمال روز اول ماه رمضان","اعمال شب سیزدهم ماه رمضان","اعمال شب نیمه ماه رمضان", "اعمال شب هفدهم ماه رمضان","اعمال شب های قدر" ,"اعمال شب نوزدهم","اعمال شب بیست و یکم","دعاهای شب های دهه آخر","بقیه اعمال شب بیست و یکم","اعمال  مخصوصه شب بیست و سوم","اعمال مخصوصه شب بیست و هقتم","اعمال شب آخر ماه رمضان","روز سی ام","نماز های شب های رمضان","دعاهای مختصره هر روز ماه رمضان"
        ]
        
        
        
        
        
        
        
        ,
         ["ماه شوال و اعمال شب اول آن","نماز ها و دعاهای شب عید فطر","اعمال روز عید فطر","نماز عید فطر","روز بیست و پنجم شهادت امام صادق(ع)"]
        ,
         ["اعمال ماه ذی القعده","نماز یکشنبه ماه ذی القعده","فضیلت شب پانزدهم ماه ذی القعده","روز بیست و سوم ماه ذی القعده و زیارت حضرت امام رضا(ع)","فضیلت شب و روز دحو الارض و اعمال آن","روز آخر ماه ذی القعده و شهادت حضرت جواد(ع)"]
        ,
         ["اعمال ماه ذی الحجه و دهه اول آن","اعمال روز اول - هفتم - هشتم ماه ذی الحجه","شب عرفه و دعای یا شاهد کل نجوی که در شب های جمعه نیز خوانده می شود","اعمال روز عرفه","دعای امام حسین(ع) در روز عرفه","اعمال شب و روز عید قربان","اعمال شب و روز عید غدیر","نماز روز عید غدیر و اعمال آن","صیغه اخوت در روز عید غدیر","فضیلت و اعمال روز مباهله","اعمال روز آخر ذی الحجه"]
        ,
         ["اعمال شب و روز اول محرم","اعمال اول محرم","اعمال شب عاشورا و روز آن","بین آن که روز عاشورا روز شوم است","در مجعول بودن دعایی که مشتمل است بر فضیلت روز عاشورا","اعمال آخر  روز عاشورا"]
    ,
         ["اعمال ماه صفر","روز اربعین","روز بیست و هشتم ماه صفر"]
        ,
         ["در ماه ربیع الاول و شب و روز اول آن","اعمال روز نهم و دوازدهم آن","اعمال روز هفدهم روز ولاد حضرت رسول(ص)"]
        ,
        
         ["اعمال ربیع الثانی و جمادی الاولی و جمادی الاخره","روز سوم وفات حضرت زهراء(س) و اعمال آن","روز بیستم ولادت حضرت زهرا و اعمال آن"]
        ,
         ["اعمال هر ماه نو و نماز اول ماه","اعمال عید نوروز","اعمال ماه های رومی و گرفتن آب نیسان و خواص آن"]

        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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
    
    
    
    
    let headerTitles = [
        "اعمال ماه مبارک رجب"
        ,
        "فضیلت و اعمال ماه شعبان"
        
        
        ,
        
      
        "اعمال ماه مبارک رمضان"

        ,
        "اعمال ماه شوال"
        ,
        "اعمال ماه ذی القعده"
        
        ,
        
        "اعمال ماه ذی الحجه"
        ,
        "اعمال ماه محرم"
        ,
        "اعمال ماه صفر"
        
        ,
        "اعمال ماه ربیع الاول"
,
        
"ربیع الثانی و جمادی الاولی و جمادی الاخره"
,
        "اعمال هر ماه نو و اعمال عید نوروز و اعمال ماه های رومی"
    ]
    
    
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