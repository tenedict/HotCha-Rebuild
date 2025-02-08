//
//  AlarmSettingView.swift
//  HotCha
//
//  Created by Yeji Seo on 2/8/25.
//
import SwiftUI

struct AlarmSettingView: View {
    
    var body: some View {
        ZStack {
            //            Color.white
            Color.gray900
            
            VStack{
                Group {
                    BusStopElement(stopCase: .disableStop)
                    BusStopElement(stopCase: .disableStop)
                    BusStopElement(stopCase: .ableStop)
                    BusStopElement(stopCase: .currentStop)
                    BusStopElement(stopCase: .ableStop)
                    BusStopElement(stopCase: .alarmStop)
                    BusStopElement(stopCase: .destinationStop)
                }
            }
        }
    }
}

#Preview {
    AlarmSettingView()
}
