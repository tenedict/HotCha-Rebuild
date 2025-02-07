//
//  Untitled.swift
//  HotCha
//
//  Created by 문재윤 on 2/4/25.
//

import SwiftUI

struct MainView: View {
    @State var isEditMode: Bool = false
    var body: some View {
        // 메인뷰 전체
        VStack(spacing: 24) {
            
            // '버스번호를 알려주세요' 텍스트 필드
            MainTextfiled(isEditMode: $isEditMode)
            
            // 즐겨찾기 항목들
            BookmarkView(isEditMode: $isEditMode)

            
            Spacer()

        }
        .padding(20)
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("gray50"))
    }
        
}



struct Main_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
