//
//  FocusView.swift
//  SwiftUILearnDemo
//
//  Created by Jadekirin on 2022/10/6.
//

import SwiftUI
extension String: Identifiable {
    public var id: Int {
        return self.hashValue
    }
}
struct FocusView: View {
    
    var headerIcons: [String] = ["8","9","10","11","12","13","14"]
    
    
    
    var body: some View {
        ScrollView {
            Color.clear.frame(height: 1)
            // 关注人的头像
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(headerIcons) { item in
                        VStack(spacing: 10) {
                            Image("image\(item)")
                                .cricleImage(width: 50)
                            Text("分享")
                        }
                    }
                    Spacer()
                }
                .padding(5)
//                .frame(height: 80)
            }
            
           // 发布的内容
            VStack(spacing: 0) {
                ForEach(0..<5) { item in
                    FocusCard()
                }
            }
           
            
        }
        .background(Color.gray.opacity(0.01))
    }
}

struct FocusView_Previews: PreviewProvider {
    static var previews: some View {
        FocusView()
    }
}
