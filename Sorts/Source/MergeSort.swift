//
//  MergeSort.swift
//  Sorts
//
//  Created by part on 2020/9/1.
//  Copyright © 2020 jacklee. All rights reserved.
//

/// 归并排序 - 2路归并
extension Array where Element == Int {
    
    mutating func mergeSort() {
        let r = inner_mergeSort(self)
        removeAll()
        append(contentsOf: r)
    }
    
    
    /// 分割数组
    /// 分治法（Divide and Conquer）
    /// 递归分割成ruo若干个子序列
    /// 对每个子序列分别归并排序
    /// 将两个排好序的子序列合并成一个最终排序序列
    private func inner_mergeSort(_ array: [Int]) -> [Int] {
        let len = array.count
        
        if len < 2 {
            return array
        }
        
        let middle = len / 2
        let left = Array(array[0..<middle])
        let right = Array(array[middle..<len])
        
        return merge(inner_mergeSort(left),
                     inner_mergeSort(right))
    }
    
    private func merge(_ ileft: [Int],
                       _ iright: [Int]) -> [Int] {
        
        var result = [Int]()
        
        var left = ileft
        var right = iright
        
        // 子序列排序
        while left.count > 0, right.count > 0 {
            if (left[0] <= right[0]) {
                let first = left[0]
                result.append(first)
                left.remove(at: 0)
            } else {
                let first = right[0]
                result.append(first)
                right.remove(at: 0)
            }
        }
        
        // 在子序列 left 和 right比较完以后，一定只有一个序列有剩余元素
        
        // 子序列剩余元素
        while left.count > 0 {
            let first = left[0]
            result.append(first)
            left.remove(at: 0)
        }
        // 子序列剩余元素
        while right.count > 0 {
            let first = right[0]
            result.append(first)
            right.remove(at: 0)
        }
        
        return result
    }
    
}

