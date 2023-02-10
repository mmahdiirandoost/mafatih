//
//  sooreh.swift
//  Mafatih
//
//  Created by Mahdi on 13/08/2015.
//  Copyright (c) 2015 Mahdi Irandoost. All rights reserved.
//

import UIKit

class adieh: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
  
    
    @IBOutlet var tableView: UITableView!
    
    
    
    
    let swiftBlogs = ["سوره عنکبوت" ,"سوره روم" ,"سوره دخان" ,"سوره یس", "سوره الرحمن" , "سوره واقعه", "سوره ملک","سوره انسان","سوره نبا","سوره اعلی","سوره شمس","سوره قدر","سوره زلزله","سوره عادیات","سوره تکاثر","سوره کافرون","سوره نصر","سوره اخلاص","سوره فلق","سوره ناس"]
    
    
    
    let swiftblogo = [ "salam", "sd"]
    
    
    let textCellidentifier = "textCell2"
    
    let blogSegueIdentifier = "man22"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ( segue.identifier == "man22")  {
            let svc = segue.destinationViewController as? adieh2;
            let cel = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cel)!.row
            svc!.tr = cel.textLabel?.text
            
            
            
        }
        
    }
    
    
    let data = [
        ["مقدمه", "تعقیبات مشترکه"]
        ,
        ["تعقیبات نماز صبح", "تعقیبات نماز ظهر", "تعقیبات نماز عصر","تعقیبات نماز مغرب","تعقیبات نماز عشاء","حکایت نافعه برای گشایش کار","سجده شکر","دعاهای وقت طلوع و غروب آفتاب"]
 ,
        ["فضیلت شب و روز جمعه","اعمال شب جمعه","اعمال روز جمعه","صلوات منسوب به ابوالحسن ضراب اصفهانی"]
,
        ["نماز حضرت رسول(ص)","نماز حضرت امیرالمومنین(ع)","نماز حضرت فاطمه(س)","نماز امام حسن(ع)","نماز امام حسین(ع)","نماز امام سجاد(ع)","نماز امام باقر(ع)","نماز امام صادق(ع)","نماز امام کاظم","نماز امام رضا(ع)","نماز امام جواد(ع)","نماز امام هادی" ,"نماز امام حسن عسکری","نماز حضرت صاحب الزمان(عج)","نماز جعقر طیار"]
    ,
        
    
        ["زیارت حضرت رسول(ص) در روز شنبه","زیارت حضرت امیرالمومنین(ع)","زیارت حضرت فاطمة الزهراء(س)","روز دوشنبه زیارت امام حسن(ع) و امام حسین(ع)","روز سه شنبه به اسم امام سجاد(ع) و اما م باقر(ع) و امام جعفر صادق(ع)","روز چهارشنبه به اسم حضرت موسی بن جعفر(ع) و امام رضا(ع) و امام علی النقی(ع)","روز ءنجشنبه روز امام حسن عسکری(ع)","روز جمعه روز امام زمان(عج)"]

    ,
        ["دعای صباح","دعای کمیل","دعای عشرات","دعای سمات","دعای مشلول","دعای مجیر","دعای عدیله","جوشن کبیر","دعای جوشن صغیر","دعای سیفی ضغیر"]

    ,
        ["آیات اسم اعظم","دعای توسل","دعای توسل دیگر","دعای فرج","دعای خلاص شدن از زندان و بند","دعای نور","حرز امام زین العابدین(ع)","دعای مقاتل بن سلیمان","دعای سریع الاجابه","دعای یا من تحل","دعای عظم البلا","دعای امام زمان(عج) (اللهم الرزقنا توفیق الطاعة","دعای حضرت حجة(عج)","استغاثه به امام زمان(عج)"]
        ,
        
        ["اول: مناجات التائبین","دوم: مناجات الشاکین","سوم: مناجات الخائفین","چهارم: مناجات الراجین","پنجم: مناجات الراجین","ششم: مناجات الشاکین","هفتم: مناجات المطیعین لله","هشتم: مناجات المریدین","نهم: مناجات المحبین","دهم: مناجات المتوسلین","یازدهم: مناجات المفتقرین","دوازدهم: مناجات العارفین","سیزدهم: مناجات الذاکرین","چهاردهم: مناجات المعتصمین","پانزدهم: مناجات الزاهدین","مناجات منظومه حضرت امیرالمومنین(ع)","ثلاث کلمات من مولانا علی(ع) فی المناجات"]
        
        
        
        
        
        
        
    
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
        "تعقیبات مشترکه"
        ,
        "تعقیبات مختصه"
 ,
        "فصل چهارم: فضیلت شب و روز جمعه"
,
        "نماز و امامان علیهم السلام و نماز جعفر طیار"
    
,
        
        "زیارت پیامبر و ائمه(علیهم السلام) در روز های هفته"
    ,
        "ادعیه مشهور"
,
        "در ذکر بعضی آیات و دعاهای نافعه"
        
        ,
        "مناجات حمش عشرة"
        
    
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