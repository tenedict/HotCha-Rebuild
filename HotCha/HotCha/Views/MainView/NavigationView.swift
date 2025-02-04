//
//  SegmentedNavigation.swift
//  HotCha
//
//  Created by 문재윤 on 2/4/25.
//

import SwiftUI

struct NavigationView: View {
    @State var selectedTab = 0

    
    var body: some View {
               VStack {
                   HStack {
                       Button(action: {
                           withAnimation { selectedTab = 0 }
                       }) {
                           Text("홈")
                               .foregroundColor(selectedTab == 0 ? .white : .black)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(selectedTab == 0 ? Color.blue : Color.clear)
                               .cornerRadius(10)
                       }
                       
                       Button(action: {
                           withAnimation { selectedTab = 1 }
                       }) {
                           Text("이용기록")
                               .foregroundColor(selectedTab == 1 ? .white : .black)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(selectedTab == 1 ? Color.blue : Color.clear)
                               .cornerRadius(10)
                       }
                       
                       Button(action: {
                           withAnimation { selectedTab = 2 }
                       }) {
                           Text("설정")
                               .foregroundColor(selectedTab == 2 ? .white : .black)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(selectedTab == 2 ? Color.blue : Color.clear)
                               .cornerRadius(10)
                       }
                   }
                   .padding()
                   .background(Color.gray.opacity(0.2)) // 탭바 배경색


                   TabView(selection: $selectedTab) {
                       MainView()
                           .tag(0)
                       MainUsageHistoryView()
                           .tag(1)
                       MainSettingView()
                           .tag(2)
                   }
                   // 인디케이터 숨겼음, 페이지 탭뷰로 스와이프 기능 넣음
                   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
               }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
