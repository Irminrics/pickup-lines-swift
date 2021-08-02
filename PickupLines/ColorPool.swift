//
//  ColorPool.swift
//  PickupLines
//
//  Created by Jun Kang on 2/8/21.
//

import SwiftUI
import GameKit

struct ColorPool {
    let colors = [
        Color(red: 90/255.0, green: 187/255.0, blue: 181/255.0), //teal color
        Color(red: 253/255.0, green: 230/255.0, blue: 116/255.0), //lightyellow color
        Color(red: 222/255.0, green: 171/255.0, blue: 66/255.0), //yellow color
        Color(red: 255/255.0, green: 215/255.0, blue: 0/255.0), //gold color
        Color(red: 255/255.0, green: 153/255.0, blue: 153/255.0), //lightred color
        Color(red: 223/255.0, green: 86/255.0, blue: 94/255.0), //red color
        Color(red: 128/255.0, green: 0/255.0, blue: 0/255.0), //maroon color
        Color(red: 239/255.0, green: 130/255.0, blue: 100/255.0), //lightorange color
        Color(red: 255/255.0, green: 91/255.0, blue: 9/255.0), //orange color
        Color(red: 188/255.0, green: 118/255.0, blue: 66/255.0), //brown color
        Color(red: 77/255.0, green: 75/255.0, blue: 82/255.0), //dark color
        Color(red: 85/255.0, green: 176/255.0, blue: 112/255.0), //green color
        Color(red: 0/255.0, green: 100/255.0, blue: 0/255.0), //darkgreen color
        Color(red: 255/255.0, green: 181/255.0, blue: 197/255.0), //pink color
        Color(red: 238/255.0, green: 224/255.0, blue: 229/255.0), //lavender color
        Color(red: 105/255.0, green: 94/255.0, blue: 133/255.0), //purple color
        Color(red: 243/255.0, green: 164/255.0, blue: 243/255.0), //violet color
        Color(red: 169/255.0, green: 195/255.0, blue: 233/255.0), //lightblue color
        Color(red: 81/255.0, green: 144/255.0, blue: 237/255.0), //blue color
        Color(red: 44/255.0, green: 81/255.0, blue: 151/255.0), //darkblue color
        Color(red: 0/255.0, green: 229/255.0, blue: 238/255.0) //turquoise color
    ]
    
    func randomColor()-> Color {
        let index = GKRandomSource().nextInt(upperBound: colors.count)
        return colors[index]
    }
}
