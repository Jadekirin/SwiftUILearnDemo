//
//  Home.swift
//  SwiftUILearnDemo
//
//  Created by 马伟龙 on 2022/9/21.
//

import SwiftUI

struct Home: View {
    
    //@ObservableObject： 监听实例对象变化，类似与KVO
    @ObservedObject var listStore = HomeListStore()
    
    var body: some View {
        
        //添加导航器
        NavigationView {
            //List: 列表排列。
            List {
                ForEach(listStore.lists) { item  in
                    NavigationLink(destination: ScrollCard()) {
                        Text(item.title)
                    }
                    .padding(.vertical, 8)
                }
            }
            
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
