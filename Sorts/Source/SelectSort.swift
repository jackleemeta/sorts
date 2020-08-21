//
//  SelectSort.swift
//  Sorts
//
//  Created by diff on 2020/8/20.
//  Copyright © 2020 jacklee. All rights reserved.
//

/// 简单选择排序
extension Array where Element == Int {
    
    mutating func selectSort() {
        
        for i in 0..<(count - 1) {
            var min = i
            for j in (i + 1)..<count {
                if self[j] < self[min] {
                    min = j
                }
            }
            
            if min != i {
                swapAt(min, i)
            }
        }
        
    }
    
}
