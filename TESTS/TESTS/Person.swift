//
//  Person.swift
//  TESTS
//
//  Created by MoringStar on 2020/6/26.
//  Copyright © 2020 MoringStar. All rights reserved.
//

import Foundation
/*
 KVC  在运行时 动态的向对象发送 setValueForKey
 */
class Person: NSObject {
    
    var name: String?
    // Swift中 基本数据类型 与KVC 不兼容
    // 解决方案: 对我们的基本数据进行初始化  也可以写 = 0
    var age: Int = 0
    // KVC构造函数的定义
    init(dict: [String: NSObject]) {
        super.init()
        // 需要先对父类初始化 然后才能使用父类身上的方法
        setValuesForKeys(dict)
        
    }
    // 遍历字典 转模型 但是字典中的key 在其对象模型的属性中不存在 就会走这个方法
    // 如果程序员自己不手动实现该方法 那么系统会调用该方法 但是会崩溃
    //Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<_3_KVCÊûÑÈÄ†ÂáΩÊï∞ÂÆö‰πâ.Person 0x7f9a6a7b3970> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key age
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
        print(key)
    }
    
}
