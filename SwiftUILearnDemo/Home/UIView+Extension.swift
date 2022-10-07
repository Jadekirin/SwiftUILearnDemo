//
//  UIView+Extension.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/6.
//


import SwiftUI

extension Image {
    
    func cricleImage(width: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .mask(Circle()) //变圆
            .frame(width: width,height: width) // 设置大小
    }
    
    
    
}


extension View {
    // 发现界面灰色背景频道按钮
    func findChannelGrayButtonStyle() -> some View {
        self
            .font(.system(size: 12))
            .padding(.vertical,8)
            .padding(.horizontal,25)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
    }
    func findChannelWhiteButtonStyle() -> some View {
        if #available(iOS 15.0, *) {
           return self
                .font(.system(size: 12))
                .padding(.vertical,8)
                .padding(.horizontal,25)
                .background(Color.white)
                .padding(1)//添加边框
                .background(.gray.opacity(0.1),in:RoundedRectangle(cornerRadius: 10))// 边框颜色
        } else {
            return self
                .font(.system(size: 12))
                .padding(.vertical,8)
                .padding(.horizontal,25)
                .background(Color.white)
                .padding(1)//添加边框
                .background(Color.gray.opacity(0.1))// 边框颜色
                .cornerRadius(10)
        }
    }
}
