//
//  ViewController.swift
//  TESTS
//
//  Created by MoringStar on 2020/1/19.
//  Copyright © 2020 MoringStar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .purple

            // 业务需求01- 自定义一个Person 类 其对应的属性 name age
            // 当我们初始化Person 我给传入的参数是一个字典 ["name": "老王", "age":18]
            // 打印 p.name p.age
            
            //        let p = Person(dict: ["name": "老王", "age":18,"no": "001"])
            //        print(p.name, p.age)
            //
            // 业务需求02- 自定义一个Student 类 其对应的属性 name age no
            // 当我们初始化Student 我给传入的参数是一个字典 ["name": "老王", "age":18, "no": "001"]
            // 打印 p.name p.age p.no
            
            let s = Student(dict: ["name": "老王" as NSObject, "age":18 as NSObject,"no": "001" as NSObject,"sss": "wwwww" as NSObject])
            
            print(s.name, s.age, s.no)
            
        }
//    }+


}

