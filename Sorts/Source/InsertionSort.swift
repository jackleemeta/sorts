//
//  InsertionSort.swift
//  Sorts
//
//  Created by diff on 2020/8/24.
//  Copyright © 2020 jacklee. All rights reserved.
//

/// 插入排序 - 简单插入排序
extension Array where Element == Int {
    
    mutating func insertionSort() {
        
        for i in 1..<count {
            var j = i
            while j > 0, self[j] < self[j - 1] {
                swapAt(j, j - 1)
                j = j - 1
            }
        }
        
    }
    
}
