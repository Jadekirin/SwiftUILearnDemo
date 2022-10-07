//
//  ChannelView.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/7.
//

import SwiftUI

struct ChannelView: View {
    //是否显示更多频道
    @Binding var isShow: Bool
    var body: some View {
        VStack {
            // 我的频道
            VStack {
                HStack {
                    Text("我的频道")
                        .foregroundColor(Color.black)
                        .bold()
                    Text("点击进入频道")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 12))
                    
                    Spacer()
                    Button {
                       // 编辑
                    } label: {
                        Text("进入编辑")
                            .font(.system(size: 12))
                            .padding(5)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                    }
                    
                    Button {
                        //收取弹框
                        withAnimation {
                            isShow = false
                        }
                    } label: {
                        Image(systemName: "chevron.up")
                            .foregroundColor(.primary)
                        
                    }
                }
                
                //
                HStack(spacing: 10) {
//                        Spacer()
                    Button {
                       
                    } label: {
                        Text("推荐")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("视频")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("科技数码")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("美食")
                            .findChannelWhiteButtonStyle()
                    }
//                        Spacer()
                }
                
                HStack(spacing: 10) {
//                        Spacer()
                    Button {
                       
                    } label: {
                        Text("推荐")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("视频")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("科技数码")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("美食")
                            .findChannelWhiteButtonStyle()
                    }
//                        Spacer()
                }
            }
            .foregroundColor(Color.black)
            .padding(.bottom,8)
            // 推荐频道
            VStack {
                HStack {
                    Text("推荐频道")
                        .foregroundColor(Color.black)
                        .bold()
                    Text("点击添加频道")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 12))
                    Spacer()
                }
                 
                //
                HStack(spacing: 10) {
//                        Spacer()
                    Button {
                       
                    } label: {
                        Text("推荐")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("视频")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("科技数码")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("美食")
                            .findChannelWhiteButtonStyle()
                    }
//                        Spacer()
                }
                
                HStack(spacing: 10) {
//                        Spacer()
                    Button {
                       
                    } label: {
                        Text("推荐")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("视频")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("科技数码")
                            .findChannelGrayButtonStyle()
                    }
//                        Spacer()
                    
                    Button {
                       
                    } label: {
                        Text("美食")
                            .findChannelWhiteButtonStyle()
                    }
//                        Spacer()
                }
                   
            }
            .foregroundColor(Color.black)
            .padding(.bottom,8)
        }
        .padding(.horizontal)//水平方向上的间距
    }
}

//struct ChannelView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChannelView()
//    }
//}
