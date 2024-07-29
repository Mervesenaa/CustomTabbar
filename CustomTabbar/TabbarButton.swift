//
//  TabbarButton.swift
//  CustomTabbar
//
//  Created by Merve Sena on 29.07.2024.
//

import Foundation
import SwiftUI

struct TabbarButton: View {
    public var image: String
    public var selectedTabBar: String
    public var reader: GeometryProxy
    public var xOffSet: CGFloat = 0
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(selectedTabBar == image ? Color(red: 95/255, green: 111/255, blue: 101/255) :  Color(red: 201/255, green: 218/255, blue: 191/255))
                    .frame(width: selectedTabBar == image ? 67 : 55, height: selectedTabBar == image ? 67 : 55)
                    .offset(y: selectedTabBar == image ? -30 : 0)
                Image(systemName: image)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .foregroundColor(selectedTabBar == image ? Color(red: 156/255,green: 169/255, blue: 134/255) : Color.white)
                    .padding(selectedTabBar == image ? 15 : 0)
                    .background(Color.white.opacity(selectedTabBar == image ? 1 : 0)
                    .clipShape(Circle()))
                    .offset(y: selectedTabBar == image ? -30 : 0)
            }
        }
    }
}


