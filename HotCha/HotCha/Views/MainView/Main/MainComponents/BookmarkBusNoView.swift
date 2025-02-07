//
//  BookmarkBusNoView.swift
//  HotCha
//
//  Created by 문재윤 on 2/7/25.
//

import SwiftUI

struct BookmarkBusNoView: View {
    let busNo: String
    let route_type: String
    
    // route_type에 따라 배경색 결정
    private var backgroundColor: Color {
        switch route_type {
        case "시내":
            return Color("bluec")
        case "일반":
            return Color("bluec")
        case "간선":
            return Color("skybluec")
        case "지선":
            return Color("greenc")
        case "광역":
            return Color("orangec")
        case "순환":
            return Color("purplec")
        case "마을":
            return Color("olivec")
        case "농어촌":
            return Color("brownc")
        case "급행":
            return Color("redc")
        case "심야":
            return Color("darkc")
        default :
            return Color("bluec")
        }
    }
    
    var body: some View {
        VStack {
            Text("\(route_type) \(busNo)")
                .font(.pretendard(.semibold, size: 14))
                .foregroundStyle(backgroundColor)
                .padding(.horizontal, 6)
                .padding(.vertical, 2)
        }
        .background(backgroundColor.opacity(0.2))
        .cornerRadius(4)
    }
}
