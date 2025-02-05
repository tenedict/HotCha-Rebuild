//
//  Untitled.swift
//  HotCha
//
//  Created by 문재윤 on 2/4/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        // 메인뷰 전체
        VStack{
            
            // '버스번호를 알려주세요' 텍스트 필드
            MainTextfiled()
            
            // 즐겨찾기 항목들
            BookmarkView()
                .padding(.top, 24)
            
            Spacer()

        }
        .padding(20)
        .frame( width: .infinity, height: .infinity)
        .background(Color("gray50"))
    }
        
}



struct Main_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
