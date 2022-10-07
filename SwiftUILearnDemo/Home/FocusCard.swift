//
//  FocusCard.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/6.
//

import SwiftUI

struct FocusCard: View {
    
    @State var comment: String = "" //评论
    
    var body: some View {
        // 关注人发的内容
        VStack {
            // 头像昵称导航
            HStack(alignment: .center) {
                Image("image3")
                    .cricleImage(width: 40)
                Text("九石读国学")
                Text("· 一天前")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                }
                .foregroundColor(.primary)

//                    Spacer()
            }
            .padding(.trailing,8)
            .padding(.leading,8)
            
            // 图片
            Image("image54")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(height: 150)
            
            // 社交功能： 点赞分享
            HStack(spacing: 15) {
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 22))
                }

                Spacer()
                
                HStack(spacing: 2) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .font(.system(size: 22))
                    }
                    Text("3")
                        .font(.system(size: 15))
                }
                
                HStack(spacing: 2) {
                    Button {
                    } label: {
                        Image(systemName: "star")
                            .font(.system(size: 22))
                    }
                    
                    Text("13")
                        .font(.system(size: 15))
                }
                
                
                HStack(spacing: 2) {
                    Button {
                        
                    } label: {
                    
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size: 22))
                    }
                    Text("2")
                        .font(.system(size: 15))
                }
                
            }
            .foregroundColor(.primary)
            .padding(10)
            
            // 发布的内容
            HStack(alignment: .firstTextBaseline) {
                Text("杜甫说不要被这种东西拖累，但有人多放杜甫说不要被...")
                    .font(.system(size: 14))
                    .padding(.leading,10)
                
                Spacer()
            }
            
            // 评论
            HStack(spacing: 10) {
                Image("image23")
                    .cricleImage(width: 30)
                    .padding(8)
                TextField("喜欢就给个评论支持一下", text: $comment)
                    .font(.system(size: 14))
                Spacer()
            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .padding(.horizontal,15)
        }
        .padding(.vertical)
    }
}

struct FocusCard_Previews: PreviewProvider {
    static var previews: some View {
        FocusCard()
    }
}
