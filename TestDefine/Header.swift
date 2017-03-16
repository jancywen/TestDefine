//
//  Header.swift
//  TestDefine
//
//  Created by wangwenjie on 2017/3/16.
//  Copyright © 2017年 Roo. All rights reserved.
//

import Foundation
import UIKit

class TestHeader:NSObject {
    
static let getStaticRef =
            ["aqua":"#00FFFF",
            "black":"#000000",
            "blue":"#0000FF",
            "fuchsia":"#FF00FF",
            "gray":"#808080",
            "green":"#008000",
            "lime":"#00FF00",
            "maroon":"#800000",
            "navy":"#000080",
            "olive":"#808000",
            "orange":"#FFA500",
            "purple":"#800080",
            "red":"#FF0000",
            "silver":"#C0C0C0",
            "teal":"#008080",
            "white":"#FFFFFF",
            "yellow":"#FFFF00",
            "clear":"#00000000"]

class func uiColorFromString(_ clrString:String) -> UIColor {
    if clrString.characters.count == 0 {
        return UIColor.clear
    }
    var clr:String = ""
    if (getStaticRef[clrString] != nil) {
        clr = getStaticRef[clrString]!
    }
    if !clr.hasPrefix("#") {
        return UIColor.red
    }
    clr = (clr as NSString ).substring(from: 1)
    let redStr = (clr as NSString ).substring(to: 2)
    let greenStr = ((clr as NSString).substring(from: 2) as NSString).substring(to: 2)
    let blueStr = ((clr as NSString).substring(from: 4) as NSString).substring(to: 2)
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    Scanner(string:redStr).scanHexInt32(&r)
    Scanner(string: greenStr).scanHexInt32(&g)
    Scanner(string: blueStr).scanHexInt32(&b)
    return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
    
}
}
