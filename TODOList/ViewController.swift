//
//  ViewController.swift
//  TODOList
//
//  Created by fengzq on 2017/11/28.
//  Copyright © 2017年 fengzq. All rights reserved.
//

import UIKit

var todos: [TodoBean] = []

func dateFromString(dateStr: String) -> Date?{
    let dateFromatter = DateFormatter()
    dateFromatter.dateFormat = "yyyy-MM-dd"
    let date = dateFromatter.date(from: dateStr)
    
    return date
    
}


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        todos = [TodoBean(id: "1", image: "child-selected", title: "1. youlechang", date: dateFromString(dateStr: "2017-11-11")!),
        TodoBean(id: "2", image: "phone-selected", title: "2. phone", date: dateFromString(dateStr: "2017-11-12")!),
        TodoBean(id: "3", image: "shopping-cart-selected", title: "3. shopping", date: dateFromString(dateStr: "2017-11-13")!),
        TodoBean(id: "4", image: "travel-selected", title: "4. travel", date: dateFromString(dateStr: "2017-11-14")!)]
        
        tableView.estimatedRowHeight = 60
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return todos.count
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        let todo = todos[indexPath.row] as TodoBean
        let image = cell.viewWithTag(100) as! UIImageView
        let title = cell.viewWithTag(101) as! UILabel
        let date = cell.viewWithTag(102) as! UILabel
        
        image.image = UIImage(named: todo.image)
        title.text = todo.title
        let local = NSLocale.current
        let dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy-MM-dd", options: 0, locale: local)
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = dateFormat
        date.text = dateFormater.string(from: todo.date)
        
        
        
        return cell
    }
    
    
    // 实现Item删除


}

