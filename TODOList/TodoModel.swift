//
//  TodoModel.swift
//  TODOList
//
//  Created by fengzq on 2017/11/29.
//  Copyright © 2017年 fengzq. All rights reserved.
//

import UIKit

class TodoBean : NSObject{
    
    var id : String
    var image : String
    var title : String
    var date : Date
    
    init(id:String, image:String, title:String, date:Date) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}
