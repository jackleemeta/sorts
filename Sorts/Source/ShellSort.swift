//
//  ShellSort.swift
//  Sorts
//
//  Created by diff on 2020/8/24.
//  Copyright © 2020 jacklee. All rights reserved.
//

// 插入排序 - 希尔排序（缩小增量排序）
extension Array where Element == Int {
    
    // 采用增量序列{n/2,(n/2)/2...1}
    mutating func shellSort() {
        var gap = count / 2 // 初始希尔增量
        
        while gap > 0 {
            for i in gap..<count {
                var j = i
                while j - gap >= 0, self[j] < self[j - gap] { // 和数组远端比较、交换
                    swapAt(j, j - gap)
                    j -= gap
                }
            }
            gap /= 2 // 缩减希尔增量
        }
        
    }
}
