//
//  MainTextfiled.swift
//  HotCha
//
//  Created by 문재윤 on 2/5/25.
//

import SwiftUI

struct MainTextfiled: View {
    @State private var isTapped: Bool = false
    
    var body: some View {
        
        VStack {
            HStack{
                Text("어디서 알려드릴까요?")
                    .padding(.top, 14)
                    .font(.pretendard(.bold, size: 24))
                Spacer()
            }
            HStack{
                HStack{ 
                    Text("지금 탑승 중인 버스번호를 알려주세요")
                        .font(.pretendard(.medium, size: 16))
                        .foregroundStyle(Color("gray300"))
                    Spacer()
                    Image("searchbtn")
                }
                .padding(16)
            }
            .onTapGesture {
                withAnimation {
                    isTapped = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { 
                    withAnimation {
                        isTapped = false
                    }
                }
            }
            .frame(height: 52)
            .background(isTapped ? Color("gray300") : Color("gray150"))
            .cornerRadius(8)
        }
    }
}
