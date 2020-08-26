//
//  QuickSort.swift
//  Sorts
//
//  Created by part on 2020/8/26.
//  Copyright © 2020 jacklee. All rights reserved.
//

/// 快速排序
extension Array where Element == Int {
    
    mutating func quickSort() {
        recursive_quickSort(left: 0, right: count - 1)
    }
    
    private mutating func recursive_quickSort(left: Int, right: Int) {
        
        if left > right {
            return
        }
        
        var i = left // 哨兵
        var j = right // 哨兵
        let substance = self[left] // 标杆
        
        while i != j {
            
            while self[j] >= substance, i < j { // 右侧哨兵先行，找出第1个`小于标杆`的元素
                j -= 1
            }
            
            while self[i] <= substance, i < j { // 左侧哨兵后行，找出第1个`大于标杆`的元素
                i += 1
            }
            
            if i < j { // 元素交换；小于标杆的数字位于标杆左侧，大于标杆的数字位于标杆右侧
                swapAt(i, j)
            }
            
        }
        
        self[left] = self[i]
        self[i] = substance
        
        // 递归
        // 排序左右两个半区
        recursive_quickSort(left: left, right: i - 1)
        recursive_quickSort(left: i + 1, right: right)
    }
    
}
