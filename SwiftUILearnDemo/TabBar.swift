//
//  TabBar.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI

struct TabBar: View {
    // @State: 修饰的属性的值发生变化后，SwiftUI会根据该属性重新绘制视图
    @State var selectView = 1
    
    
    init() {
        // 背景色
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //创建控制器
        /**
         *$selectView: 加$ 是为了取Int
         */
        TabView(selection: $selectView) {
            Home().tabItem {
                Image("IconHome")
                Text("Home")
            }.tag(1) //标识，类似与xib的index
            
            Center().tabItem {
                Image("IconCards")
                Text("Center")
            }.tag(2)
            
            Mine().tabItem {
                Image("IconSettings")
                Text("Mine")
            }.tag(3)
            
        }
        .accentColor(.blue) //选中时候字体的颜色
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
