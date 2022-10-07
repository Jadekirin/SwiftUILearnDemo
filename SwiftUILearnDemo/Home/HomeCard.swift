//
//  ScrollCard.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI

struct HomeCard: View {
    
    var text = ""
    var imageUrl = ""
    var userName = ""
    var location = ""
    var headerIcon = ""
    
    var body: some View {
            
            // alignment: .leading 左对齐
            VStack(alignment: .leading,spacing: 8) { // 关注布局
                
                Image(imageUrl)
                    .resizable() //设置SwiftUI调整图像大小以适应其空间的模式。
                    .aspectRatio(contentMode: .fit)
                Text(text)
                //
                HStack(spacing: 0) { // 设置间距
                    // 头像
                    Image(headerIcon)
                        .cricleImage(width: 40)
                    
                    Text(userName)
                    Spacer() // 弹簧，把下面的控件顶到最右边
                    Image(systemName: "location")
                    Text(location)
                }
                .font(.footnote) // 设置字体
            }
            .frame(width: kScreenWidth / 2 - 30) //留下间距20的空隙，防止移除平外
            .padding(10) // 外层的间距 最好放在frame 的下面
            .background(Color.white)
        
            .cornerRadius(8)
            
        }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
    }
}
