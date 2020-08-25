//
//  Heapsort.swift
//  Sorts
//
//  Created by diff on 2020/8/20.
//  Copyright © 2020 jacklee. All rights reserved.
//

/// 选择排序 - 堆排序
extension Array where Element == Int {
    
    /// Heapsort
    ///
    /// 堆排序入口函数
    ///
    /// - Parameter ary: 待排数组
    mutating func heapsort() {
        
        // 构建大堆顶
        initMaxHeap()
        
        // 下沉大值，上浮末尾值
        for index in stride(from: count - 1, through: 0, by: -1) {
            // 操作：下沉大值，上浮末尾值
            // 操作原因：使大值处于数组（物理结构）末尾
            swap(i: 0,
                 j: index)
            
            // 操作：从largestIndex开始，重建大顶堆
            // 操作原因：末尾值被移到堆顶，大顶堆结构可能已被破坏
            heapify(index: 0,
                    length: index) // 排序范围 - 倒数第一个元素已确定，从倒数第二个值开始（ary.count - 1）
        }
    }
    
    /// 构建大堆顶 - 优化算法
    ///
    /// 从最后一个非叶子节点开始向前遍历，调整节点性质，使之成为大顶堆
    ///
    /// - Parameter ary: 待排数组
    private mutating func initMaxHeap() {
        for index in stride(from: (count - 1) >> 1, through: 0, by: -1) {
            heapify(index: index,
                    length: count)
        }
    }
    
    /// 构建大顶堆
    ///
    /// - Parameters:
    ///   - ary: 待排数组
    ///   - index: 开始构建的index，构建大顶堆
    ///   - length: 数组长度
    private mutating func heapify(index: Int,
                                  length: Int) {
        
        var largestIndex = index // 初始父节点
        let left = 2 * index + 1 // 初始左子节点
        let right = 2 * index + 2 // 初始右子节点
                
        if left < length, self[left] > self[largestIndex] { // 左子节点 大于 父节点
            largestIndex = left // 父节点 和 左子节点 交换索引
        }
        
        if right < length, self[right] > self[largestIndex] { // 在左、父比较之后，右子节点 大于 父节点
            largestIndex = right // 父节点 和 右子节点 交换索引
        }
        
        if largestIndex != index { // 若交换后的索引和当前索引不同，意味着将存在小元素上浮，一定会破坏大顶堆结构
            // 操作：交换父子节点
            // 操作原因：为了满足大顶堆定义
            swap(i: index,
                 j: largestIndex)
            
            // 操作：从largestIndex开始，重建大顶堆
            // 操作原因：交换了index和largestIndex后，大顶堆一定被破坏，如果该子节点也有自己的子节点，仍需要再次调整
            heapify(index: largestIndex,
                    length: length)
        }
    }
    
    /// 交换节点
    /// - Parameters:
    ///   - ary: 待排数组
    ///   - i: 需要交换的index i
    ///   - j: 需要交换的index j
    private mutating func swap(i: Int,
                               j: Int) {
        swapAt(i, j)
    }
    
}
