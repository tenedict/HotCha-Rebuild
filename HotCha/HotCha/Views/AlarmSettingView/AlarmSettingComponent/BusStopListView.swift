//
//  BusStopList.swift
//  HotCha
//
//  Created by Yeji Seo on 2/9/25.
//


struct BusStopListView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                ForEach(0..<10) { _ in
                    ZStack(alignment: .bottom) {
                        Divider()
                            .background(.gray100.opacity(0.15))
                        
                        BusStopElement(stopCase: .disableStop)
                    }
                }
                
                
                BusStopElement(stopCase: .disableStop)
                BusStopElement(stopCase: .ableStop)
                BusStopElement(stopCase: .currentStop)
                BusStopElement(stopCase: .ableStop)
                BusStopElement(stopCase: .alarmStop)
                BusStopElement(stopCase: .destinationStop)
                
                
            }
            .padding(0)
        }
        .ignoresSafeArea(.all)
        .background(.gray900)
    
    }
}

#Preview {
    AlarmSettingView()
}
