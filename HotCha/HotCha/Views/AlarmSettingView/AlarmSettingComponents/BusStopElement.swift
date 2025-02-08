//
//  BusStopElement.swift
//  HotCha
//
//  Created by Yeji Seo on 2/7/25.
//
// AlarmSettingView에서 버스 정류장 리스트를 나타낼 때 사용할 컴포넌트

import SwiftUI

/// 버스 정류장 리스트 한 칸
struct BusStopElement: View {
    let stopCase: BusStopElementCase
    
    var body: some View {
        HStack(spacing: 0){
            // 정류장 이미지 표시 영역
            ZStack {
                VStack (spacing: 0) {
                    BusStopLine(line_color: stopCase.line_color)
                        .padding(0)
                    BusStopLine(line_color: stopCase.line_color)
                        .padding(0)
                }
                BusStopPoint(stopCase: stopCase, outer_circle_size: stopCase.outer_circle_size, outer_circle_color: stopCase.outer_circle_color)
                    .frame(width: 16, height: 16)
            }
            // 정류장 텍스트 영역
            VStack(alignment:.leading, spacing: 3) {
                HStack {
                    Text("청강리공영차고지")
                        .font(.pretendard(.medium, size: 16))
                        .foregroundStyle(stopCase.text_color)
                    
                    if let icon = stopCase.destination_icon {
                        Rectangle()
                            .frame(width: 36, height: 28)
                            .cornerRadius(13)
                            .foregroundStyle(Color.gray900)
                            .overlay(
                                icon
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .foregroundColor(stopCase.text_color)
                            )
                    }
                }
                
                Text("09008")
                    .font(.pretendard(.medium, size: 12))
                    .foregroundStyle(.gray500)
            }
            .padding(EdgeInsets(top: 20, leading: 35, bottom: 20, trailing: 0))
        }
        .frame(maxWidth: .infinity, maxHeight: 78, alignment: .leading)
        .padding(.leading, stopCase.leading_padding)
        .background(stopCase.background_color)
        .ignoresSafeArea()
        
    }
}

/// 버스 정류장 옆 노선 라인
struct BusStopLine: View {
    var line_color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: 6, height: 39)
            .foregroundStyle(.gray150)
    }
}

/// 버스 정류장 옆 원형 포인트
struct BusStopPoint: View {
    let stopCase: BusStopElementCase
    var inner_circle_size: CGFloat = 10 // 작은 원 사이즈
    var outer_circle_size: CGFloat // 큰 원 사이즈
    var outer_circle_color: Color // 큰 원 색상
    //    var is_shadow: Color // 그림자 여부 ( 현재 위치 정류장 표시용)
    
    var body: some View {
        // currentStop인 경우
        if stopCase.is_shadow != false {
            Ellipse()
                .frame(width: 40, height: 40)
                .foregroundStyle(.mainpurple.opacity(0.15)) // TODO: opicity 수정 필요
        }
        Ellipse()
            .frame(width: outer_circle_size, height: outer_circle_size)
            .foregroundStyle(outer_circle_color)
            .overlay(
                Ellipse()
                    .frame(width: inner_circle_size, height: inner_circle_size)
                    .foregroundStyle(.gray900)
            )
    }
}


/// 정류장 Element의 경우의 수
enum BusStopElementCase {
    case ableStop // 일반 정류장
    case disableStop // 지나온 정류장
    case currentStop // 현재 위치한 정류장
    case alarmStop // 알람이 울릴 정류장
    case destinationStop // 목적지 정류장
    
    
    var text_color: Color {
        switch self {
        case .ableStop:
            return .gray100
        case .disableStop:
            return .gray // 수정필요
        case .currentStop, .alarmStop, .destinationStop:
            return .mainpurple
        }
    }
    
    var line_color: Color {
        switch self {
        case .disableStop:
            return .gray // 수정필요
        default:
            return .gray150
        }
    }
    
    var outer_circle_size: CGFloat {
        switch self {
        case .alarmStop, .destinationStop:
            return 22
        default:
            return 16
        }
    }
    
    var outer_circle_color: Color {
        switch self {
        case .disableStop:
            return .gray // 수정필요
        case .currentStop, .alarmStop, .destinationStop:
            return .mainpurple
        default:
            return .gray150
        }
    }
    
    var background_color: Color {
        switch self {
        case .alarmStop, .destinationStop:
            return .purpleOpacity10
        default:
            return .clear
        }
    }
    
    var is_shadow: Bool {
        switch self {
        case .currentStop:
            return true
        default:
            return false
        }
    }
    
    var destination_icon: Image? {
        switch self {
        case .alarmStop:
            return Image(systemName: "bell")
        case .destinationStop:
            return Image("map_pin")
        default:
            return nil
        }
    }
    
    var leading_padding: CGFloat {
        switch self {
        case .alarmStop, .destinationStop:
            return 57
        case .currentStop:
            return 48
        default:
            return 60
        }
    }
    
    
}


//#Preview {
//    BusStopElement()
//}
#Preview {
    AlarmSettingView()
}
