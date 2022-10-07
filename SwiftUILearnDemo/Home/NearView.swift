//
//  NearView.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/6.
//

import SwiftUI

// 附近

struct NearView: View {
    var body: some View {
        ScrollView {
            // 留白
            Color.clear.frame(height: 1)
            HStack(alignment: .top) { // 卡片布局
                VStack {
                    HomeCard(text: "我是文案显示",imageUrl: "image8",userName: "昵称",location: "22km", headerIcon: "image4")
                    HomeCard(text: "我是文案显示",imageUrl: "image6",userName: "昵称",location: "22km", headerIcon: "image4")
                }
                Spacer() // 为了让HStack 任何时候都充满屏幕
                VStack {
                    HomeCard(text: "我是文案显示2",imageUrl: "image24",userName: "昵称 番茄",location: "25km", headerIcon: "image4")
                }
            }
            
        }
        .background(Color.gray.opacity(0.1))
    }
}

struct NearView_Previews: PreviewProvider {
    static var previews: some View {
        NearView()
    }
}
