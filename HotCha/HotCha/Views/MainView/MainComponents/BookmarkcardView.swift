//
//  BookmarkcardView.swift
//  HotCha
//
//  Created by 문재윤 on 2/5/25.
//

import SwiftUI

import SwiftUI

struct BookmarkcardView: View {
    let name: String
    let image: String
    
    @State private var isTapped: Bool = false


    var body: some View {
        VStack {
            VStack{
                HStack {
                    Image(image)
                    Text(name)
                        .font(.pretendard(.bold, size: 14))
                    
                    Spacer()
                    
                    Image("plusicon")
                        .resizable()
                        .frame(width: 14, height: 14)
                }
                VStack {
                    HStack{
                        Text("장소와 알림을 등록해")
                        Spacer()
                    }
                    HStack{
                        Text("간편하게 이용해 보세요")
                        Spacer()
                    }
                }
                .foregroundStyle(Color("gray300"))
                .font(.pretendard(.medium, size: 14))
                .padding(.top, 16)
            }
            .padding(12)
        }
        .background(isTapped ? Color("gray300") : Color("gray150"))
        .cornerRadius(8)
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

    }
}

struct BookmarkcardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
