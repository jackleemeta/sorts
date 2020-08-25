//
//  AppDelegate.swift
//  Sorts
//
//  Created by diff on 2020/8/20.
//  Copyright © 2020 jacklee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // 选择排序 - 堆排序
        heapsort()
        
        // 选择排序 - 简单选择排序
        selectSort()
        
        // 冒泡排序
        bubbleSort()
        
        // 插入排序 - 简单插入排序
        insertionSort()
        
        // 插入排序 - 希尔排序
        shellSort()
        
        return true
    }
    
    /// 选择排序 - 堆排序
    func heapsort() {
        var ary = [5, 8, 6, 100, 16, 2, 10, 15, 20, 3, 11, 1000, 96, 12]
        ary.heapsort()
        debugPrint("\n Heapsorted ary      = \(ary) \n")
    }
    
    /// 选择排序 - 简单选择排序
    func selectSort() {
        var ary = [5, 8, 6, 100, 16, 2, 10, 15, 20, 3, 11, 1000, 96, 12]
        ary.selectSort()
        debugPrint("\n SelectSorted ary    = \(ary) \n")
    }
    
    /// 交换排序 - 冒泡排序
    func bubbleSort() {
        var ary = [5, 8, 6, 100, 16, 2, 10, 15, 20, 3, 11, 1000, 96, 12]
        ary.bubbleSort()
        debugPrint("\n BubbleSorted ary    = \(ary) \n")
    }
    
    /// 插入排序 - 简单插入排序
    func insertionSort() {
        var ary = [5, 8, 6, 100, 16, 2, 10, 15, 20, 3, 11, 1000, 96, 12]
        ary.insertionSort()
        debugPrint("\n insertionSorted ary = \(ary) \n")
    }
    
    /// 插入排序 - 希尔排序
    func shellSort() {
        var ary = [5, 8, 6, 100, 16, 2, 10, 15, 20, 3, 11, 1000, 96, 12]
        ary.shellSort()
        debugPrint("\n shellSorted ary     = \(ary) \n")
    }

}

