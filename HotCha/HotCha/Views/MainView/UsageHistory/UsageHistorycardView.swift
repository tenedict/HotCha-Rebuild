//
//  UsageHistorycard.swift
//  HotCha
//
//  Created by 문재윤 on 2/7/25.
//
import SwiftUI

struct UsageHistorycardView: View {
    var body: some View {
        VStack {
            VStack(spacing: 14) {
                HStack {
                    BookmarkBusNoView(busNo: "99", route_type: "시내")
                    Spacer()
                    Text("2025.02.07")
                        .font(.pretendard(.medium, size: 14))
                }
                HStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("도착 정류장")
                        Text("하차 시간")
                        Text("차량 번호")
                        Text("운수사명")
                        Text("운수사 전화번호")
                    }
                    .font(.pretendard(.semibold, size: 14))
                    .foregroundStyle(Color("gray600"))
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("2호선")
                        Text("2호선")
                        Text("2호선")
                        Text("2호선")
                        Text("2호선")
                    }
                    .font(.pretendard(.semibold, size: 14))
                    .foregroundStyle(Color("gray800"))
                    Spacer()
                }
                
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 30)
            
            Divider()
                .padding(0)
        }
        
    }
}



struct UsageHistorycard_Previews: PreviewProvider {
    static var previews: some View {
        UsageHistorycardView()
    }
}
