//
//  Untitled.swift
//  HotCha
//
//  Created by 문재윤 on 2/5/25.
//

import SwiftUI


struct BookmarkView: View {

    var body: some View {
        VStack {
            // 상단 설명과 편집 버튼
            HStack{
                Text("즐겨찾기 알림 (2/6)")
                    .font(.pretendard(.semibold, size: 16))
                Spacer()
                Text("편집")
                    .font(.pretendard(.semibold, size: 16))
                    .foregroundStyle(Color("gray600"))
            }
            .padding(.bottom, 12)
            
            // 고정된 즐겨찾기
            HStack(spacing: 15) {
                BookmarkcardView(name: "집", image: "houseicon")
                BookmarkcardView(name: "회사", image: "buildingicon")
            }
            
            // 직접 추가하는 즐겨찾기

        }
    }
}



struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
