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


class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        todos = [TodoBean(id: "1", image: "child-selected", title: "1. youlechang", date: dateFromString(dateStr: "2017-11-11")!),
        TodoBean(id: "2", image: "child-selected", title: "1. youlechang", date: dateFromString(dateStr: "2017-11-11")!),
        TodoBean(id: "3", image: "child-selected", title: "1. youlechang", date: dateFromString(dateStr: "2017-11-11")!),
        TodoBean(id: "4", image: "child-selected", title: "1. youlechang", date: dateFromString(dateStr: "2017-11-11")!)]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50
    }
   
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        return cell
    }

}

