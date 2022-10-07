//
//  ChannelTopView.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/7.
//

import SwiftUI

struct ChannelTopView: View {
    
    
    // 这里使用Binding而不使用State 的原因是：使用State 上个界面传值进来只会传递一次，后续上个界面值变化的时候这个值不能同步，而使用Binding则是把两个界面的值绑定在一起，一个变化另一个也会变化
    // Binding 无法设置初始值
    @Binding var selectIndex: Int
    @Binding var classifys: [String]
    //是否显示更多频道
    @Binding var isShow: Bool
    
    var body: some View {
        // 顶部频道分类
        HStack {
            // 分类
            ScrollView(.horizontal,showsIndicators: false) {
                
                HStack(spacing: 20) {
                    ForEach(0..<classifys.count,id:\.self) { item in
                        Button {
                            selectIndex = item
                        }label: {
                            Text(self.classifys[item])
                                .foregroundColor(item == selectIndex ? .black : .gray)
                                .font(.system(size: item == selectIndex ? 18 : 16))
                        }
                    }
                }
            }
            .foregroundColor(.black)
            .padding(.leading)
            
            // 更多
            Button {
                withAnimation {// 动画
                    isShow = true
                }
            } label: {
                Image(systemName: "chevron.down")
                    .foregroundColor(.primary)
                    .padding(.trailing)
            }

        }
        .padding(.bottom,6)
    }
}

//struct ChannelTopView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChannelTopView(selectIndex: <#Binding<Int>#>, classifys: <#Binding<[String]>#>)
//    }
//}
