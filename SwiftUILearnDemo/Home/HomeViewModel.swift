//
//  HomeViewModel.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI
import Combine

class HomeListStore: ObservableObject {
    // 列表数据
    let didChange = PassthroughSubject<Void, Never>()
    
    @Published var lists:[HomeListModel] = []
    
    init() {
        self.lists = homeListDatas()
    }
    
    func homeListDatas() -> [HomeListModel] {
        return [HomeListModel(title: "滚动卡片示例"),
                HomeListModel(title: "选择器示例"),
                HomeListModel(title: "选择器示例"),
                HomeListModel(title: "选择器示例"),
                HomeListModel(title: "选择器示例"),
                
        ]
    }
}

