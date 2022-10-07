//
//  TabBar.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI

struct TabBar: View {
    // @State: 修饰的属性的值发生变化后，SwiftUI会根据该属性重新绘制视图
    @State var selectView = 1 // 自定义使用
    @State var select: Selection = .home
    // 界面枚举
    enum Selection {
        case home
        case shopping
        case not
        case account
    }
    
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
        // 常规的使用
//        TabView(selection: $selectView) {
//            Home().tabItem {
//                Image("IconHome")
//                Text("Home")
//            }.tag(1) //标识，类似与xib的index
//
//            Center().tabItem {
//                Image("IconCards")
//                Text("Center")
//            }.tag(2)
//
//            Mine().tabItem {
//                Image("IconSettings")
//                Text("Mine")
//            }.tag(3)
//
//        }
//        .accentColor(.blue) //选中时候字体的颜色
//        .edgesIgnoringSafeArea(.top)
        
        // 仿小红书tabBar 自定义
        HStack {
            // 内部多加两个HStack 是因为一个HStack中的内容不能太多了，否则会报错
            HStack {
                Spacer()
                Button {
                    select = .home
                } label: {
                    Text("首页")
                }
                .foregroundColor(select == .home ? .black : .gray)
                
                Spacer()
                Button {
                    select = .shopping
                } label: {
                    Text("购物")
                }
                .foregroundColor(select == .shopping ? .black : .gray)
                Spacer()
            }
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(.vertical,6)
                    .padding(.horizontal,12)
                    .background(Color.red)
                    .cornerRadius(8)
            }

            
            HStack {
                Spacer()
                Button {
                    select = .not
                } label: {
                    Text("消息")
                }
                .foregroundColor(select == .not ? .black : .gray)
                
                Spacer()
                Button {
                    select = .account
                } label: {
                    Text("我")
                }
                .foregroundColor(select == .account ? .black : .gray)
                Spacer()
            }
            
        }
        .padding(.top)
        .foregroundColor(.black)
        .background(Color.white)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
