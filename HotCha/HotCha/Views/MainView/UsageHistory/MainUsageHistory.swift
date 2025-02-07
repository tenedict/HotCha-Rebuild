//
//  UsageHistory.swift
//  HotCha
//
//  Created by 문재윤 on 2/4/25.
//
import SwiftUI

struct MainUsageHistoryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Historyannouncement()
                
                UsageHistorycardView()
                UsageHistorycardView()
                UsageHistorycardView()
                
                
                
            }
            .padding(20)
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("gray50"))
    }
}


struct MainUsageHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        MainUsageHistoryView()
    }
}
