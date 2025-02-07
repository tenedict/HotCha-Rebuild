//
//  UsageHistory.swift
//  HotCha
//
//  Created by 문재윤 on 2/4/25.
//
import SwiftUI
import SwiftData

struct MainUsageHistoryView: View {
    @Environment(\.modelContext) private var modelContex
    @Query var Usage_history: [Usage_history]
    
    @State var showinghistory: Bool = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Historyannouncement()
//                Text("이거눌러 테스트")
//                    .onTapGesture {
//                        showinghistory = true
//                    }
//                    
                
                ForEach(Usage_history) { history in
                    UsageHistorycardView(history: history)
                }


                
                
                
            }
            .padding(20)
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("gray50"))
        .sheet(isPresented: $showinghistory) {
            AddUsageHistoryView()
        }
    }
        
}


struct MainUsageHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        MainUsageHistoryView()
    }
}
