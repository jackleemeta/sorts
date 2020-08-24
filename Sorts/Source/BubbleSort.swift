//
//  BubbleSort.swift
//  Sorts
//
//  Created by diff on 2020/8/24.
//  Copyright © 2020 jacklee. All rights reserved.
//

extension Array where Element == Int {
    
    mutating func bubbleSort() {
        for i in 0..<(count - 1) {
            
            var aBool = true
            
            for j in 0..<(count - i - 1) {
                if self[j] > self[j + 1] {
                    swapAt(j, j + 1)
                    aBool = false
                }
            }
            
            if aBool { // 没有经历过交换，说明已经有序
                break
            }
        }
        
    }
    
}
