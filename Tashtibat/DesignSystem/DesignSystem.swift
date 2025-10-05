//
//  DesignSystem.swift
//  Tashtibat
//
//  Created by Nouran Bakry on 04/10/2025.
//

import SwiftUI

struct AppColor {
    static let primary50 = Color("Primary-50")
    static let primary100 = Color("Primary-100")
    static let primary300 = Color("Primary-300")
    static let primary500 = Color("Primary-500")
    static let primary700 = Color("Primary-700")
    static let primary900 = Color("Primary-900")
    
    static let success50 = Color("success-50")
    static let success100 = Color("success-100")
    static let success200 = Color("success-200")
    static let success300 = Color("success-300")
    static let success400 = Color("success-400")
    static let success500 = Color("success-500")
    static let success600 = Color("success-600")
    static let success700 = Color("success-700")
    static let success800 = Color("success-800")
    static let success900 = Color("success-900")
    
    static let grey50 = Color("grey-50")
    static let grey100 = Color("grey-100")
    static let grey200 = Color("grey-200")
    static let grey500 = Color("grey-500")
    static let grey900 = Color("grey-900")
    
    static let error50 = Color("error-50")
    static let error100 = Color("error-100")
    static let error200 = Color("error-200")
    static let error300 = Color("error-300")
    static let error400 = Color("error-400")
    static let error500 = Color("error-500")
    static let error600 = Color("error-600")
    static let error700 = Color("error-700")
    static let error800 = Color("error-800")
    static let error900 = Color("error-900")
    
    static let teal50 = Color("teal-50")
    static let teal500 = Color("teal-500")
    
    static let pink50 = Color("pink-50")
    static let pink500 = Color("pink-500")
    
}

struct AppTypography {
    static func H1() -> Font {
        .custom("Alexandria-Regular", size: 32) // font family + size
    }
    
    static func H1Light() -> Font {
        .custom("Alexandria-Light", size: 32)
    }
    
    static func H6Bold() -> Font {
        .custom("Alexandria-Bold", size: 32)
    }
    
    static func H2() -> Font {
        .custom("Alexandria-Regular", size: 32)
    }
    
    static func H2Light() -> Font {
        .custom("Alexandria-Light", size: 24)
    }
    static func H5Bold () -> Font {
        .custom("Alexandria-Bold", fixedSize: 24)
    }
    static func H3() -> Font {
        .custom("Alexandria-Regular", size: 20)
    }
    static func H3Light() -> Font {
        .custom("Alexandria-Light", size: 20)
    }
    static func H4Bold() -> Font {
        .custom("Alexandria-Bold", size: 20)
    }
    static func Title() -> Font {
        .custom("Alexandria-Regular", size: 16)
    }
    static func TitleLight() -> Font {
        .custom("Alexandria-Light", size: 16)
    }
    static func TitleBold() -> Font {
        .custom("Alexandria-Bold", size: 16)
    }
    static func Body() -> Font {
        .custom("Alexandria-Regular", size: 13)
    }
    static func BodyLight() -> Font {
        .custom("Alexandria-Light", size: 13)
    }
    static func BodyBold() -> Font {
        .custom("Alexandria-Bold", size: 13)
    }
    static func Caption() -> Font {
        .custom("Alexandria-Regular", size: 11)
    }
    static func CaptionLight() -> Font {
        .custom("Alexandria-Light", size: 11)
    }
    static func CaptionBold() -> Font {
        .custom("Alexandria-Bold", size: 11)
    }
}

enum AppLayout {
    static let cornerRadius: CGFloat = 16
    static let horizontalPadding: CGFloat = 20
}

