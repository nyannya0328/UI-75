//
//  model.swift
//  UI-75
//
//  Created by にゃんにゃん丸 on 2020/12/17.
//

import SwiftUI

struct model : Identifiable {
    var id = UUID().uuidString
    var name : String
    var modelname : String
    var details : String
}

var models = [
    
    model(name: "Eath", modelname: "Earth.usdz", details: "The Eath is blue"),
    
    model(name: "Piano", modelname: "Grand_Piano.usdz", details: "ピアノ"),
    
    model(name: "Jupiter", modelname: "Jupiter.usdz", details: "ジュピター"),
    
    model(name: "Moon", modelname: "Moon.usdz", details: "月"),
    
    model(name: "Nike", modelname: "Nike_Air_Zoom_Pegasus_36.usdz", details: "Air Zoom"),
    
    model(name: "フィルナイト", modelname: "Nike_The_winged_Goddess_of_Victory.usdz", details: "ニケ"),
    
    model(name: "Venus", modelname: "Venus.usdz", details: "ビーナス"),



]
