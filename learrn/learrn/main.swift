//
//  main.swift
//  learrn
//
//  Created by 20161104572 on 2018/9/19.
//  Copyright © 2018年 20161104572. All rights reserved.
//

import Foundation

var str = 0
var s=[14,12,3,24,45,5,64,63,2,34,9,7]
for k in 0..<(s.count-1){
    for j in 0..<(s.count-k-1){
    if s[j]>s[j+1]{
        str = s[j]
        s[j] = s[j+1]
        s[j+1] = str
        }
    }
}
print(s)

