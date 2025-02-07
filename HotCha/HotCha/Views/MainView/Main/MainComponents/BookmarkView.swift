//
//  Untitled.swift
//  HotCha
//
//  Created by 문재윤 on 2/5/25.
//

import SwiftUI
import SwiftData


struct BookmarkView: View {
    @Environment(\.modelContext) private var modelContex
    @Query var bookmarkdata: [Bookmarkmodel]
    @Binding var isEditMode: Bool
    
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 15),
            GridItem(.flexible(), spacing: 15)
        ]

    var body: some View {
        VStack {
            // 상단 설명과 편집 버튼
            HStack{
                Text("즐겨찾기 알림 (2/6)")
                    .font(.pretendard(.semibold, size: 16))
                Spacer()

                
                Text(isEditMode ? "완료" : "편집")
                        .font(.pretendard(.semibold, size: 16))
                        .foregroundStyle(isEditMode ? Color("mainpurple") : Color("gray600"))
                        .onTapGesture {
                            // 편집 모드 토글
                            isEditMode.toggle()
                        }
            }
            .padding(.bottom, 12)
            VStack(spacing: 16) {
                // 고정된 즐겨찾기
                HStack(spacing: 15) {
                    BookmarkcardnothingView(name: "집", image: "houseicon")
                    BookmarkcardnothingView(name: "회사", image: "buildingicon")
                }
                
                // 직접 추가하는 즐겨찾기
                LazyVGrid(columns: columns, spacing: 16) { ForEach(bookmarkdata) { bookmark in
                    BookmarkcardcustomView(isEditMode: isEditMode, bookmark: bookmark)
                }
                    if bookmarkdata.count < 4 {
                        if !isEditMode {
                            BookmarkplusView()
                        }
                        }
                }
            }
            

        }
    }
}



struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
