//
//  Home.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI
let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height
struct Home: View {
    
    //@ObservableObject： 监听实例对象变化，类似与KVO
    @ObservedObject var listStore = HomeListStore()
    @State var selectIndex: Int = 0
    var body: some View {
        
        //添加导航器
        NavigationView {
            //以滚动视图做底层
            if #available(iOS 14.0, *) {
                VStack {
                    
                    // 顶部内容
                    HStack {
                        // 为了使其中间的标题居中
                        Button {
                            
                        } label: {
                            Image(systemName: "tray.circle")
                        }
                        .foregroundColor(.black)

                        
                        Spacer()
                        HStack(spacing: 20) { // spacing 添加间距
                            Button {
                                // 选中第几个
                                selectIndex = 0
                            } label: {
                                Text("关注")
                                    .foregroundColor(selectIndex == 0 ? .black : .gray)
                            }
                            
                            Button {
                                selectIndex = 1
                            } label: {
                                Text("发现")
                                    .foregroundColor(selectIndex == 1 ? .black : .gray)
                            }
                            
                            Button {
                                selectIndex = 2
                            } label: {
                                Text("附近")
                                    .foregroundColor(selectIndex == 2 ? .black : .gray)
                            }
                        }
                        
                        Spacer()
                        //搜索button
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                        }.foregroundColor(.black)
                    }
                    .padding(.horizontal) //为外层添加间距
                    
                    
                    
                    
                    
                    // 添加分界线
                    Divider()
                    
                    // 主题内容
                    TabView(selection: $selectIndex) { // 绑定类型的下标
                        // 设置 body 内容
                        // alignment: .top 不同比例的图片顶部对齐
                        FocusView()
                        .tag(0)
                        
                       FindView()
                        .tag(1)
                        
                        NearView()
                        .tag(2)
                    }
                    .padding(6)
                    .tabViewStyle(.page(indexDisplayMode: .never)) // indexDisplayMode: .never 隐藏小圆点
                    
                    
//                    .frame(minHeight:kScreenHeight)
                    // 底部内容
                    TabBar()
                }
//
                .navigationBarHidden(true)
            } else {
                // Fallback on earlier versions
            }
        }
        
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
