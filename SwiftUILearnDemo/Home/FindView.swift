//
//  FindView.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/6.
//

import SwiftUI
// 发现

struct FindView: View {
    
    @State var selectIndex = 0
    @State var classifys: [String] = ["推荐","视频","直播","美食","学习","运动","摄影","健身塑形","情感","搞笑"]
    //是否显示更多频道
    @State var isShow: Bool = false
    var body: some View {
        
        VStack {
            
            if isShow {
                //更多频道显示视图
                ChannelView(isShow: $isShow)
            }else {
                // 顶部频道分类
                // $ 代表的是绑定的意思
                ChannelTopView(selectIndex: $selectIndex,classifys: $classifys,isShow: $isShow)
            }
           
            
            
            
            // 内容展示
            if #available(iOS 14.0, *) {
                TabView(selection: $selectIndex) {
                    ForEach(0..<self.classifys.count) { item in
                        ScrollView {
                            // 留白
                            Color.clear.frame(height: 1)
                            HStack(alignment: .top) { // 卡片布局
                                VStack {
                                    HomeCard(text: "我是文案显示",imageUrl: "image3\(item)",userName: "昵称",location: "22km", headerIcon: "image4")
                                    HomeCard(text: "我是文案显示",imageUrl: "image4\(item)",userName: "昵称",location: "22km", headerIcon: "image4")
                                }
                                Spacer() // 为了让HStack 任何时候都充满屏幕
                                VStack {
                                    HomeCard(text: "我是文案显示2",imageUrl: "image1\(item)",userName: "昵称 番茄",location: "25km", headerIcon: "image4")
                                }
                            }
                        }
                        .tag(item)
                        .background(Color.gray.opacity(0.1))
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never)) // 14.0 版本以上
            } else {
                // Fallback on earlier versions
            }
            
         }
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}
