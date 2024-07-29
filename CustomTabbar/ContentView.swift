//
//  ContentView.swift
//  CustomTabbar
//
//  Created by Merve Sena on 29.07.2024.
//

import SwiftUI

enum Tab {
    case home
    case categories
    case accounts
    case settings
}

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        GeometryReader { reader in
            VStack {
                Spacer()
                switch selectedTab {
                case .home:
                    HomeView()
                case .categories:
                    CategoriesView()
                case .accounts:
                    AccountsView()
                case .settings:
                    SettingsView()
                }
                Spacer()
                
                HStack {
                    TabbarButton(image: "house", selectedTabBar: getSelectedTabBarImage(), reader: reader) {
                        selectedTab = .home
                    }
                    Spacer()
                    TabbarButton(image: "tag.fill", selectedTabBar: getSelectedTabBarImage(), reader: reader) {
                        selectedTab = .categories
                    }
                    Spacer()
                    TabbarButton(image: "person.crop.circle", selectedTabBar: getSelectedTabBarImage(), reader: reader) {
                        selectedTab = .accounts
                    }
                    Spacer()
                    TabbarButton(image: "gear", selectedTabBar: getSelectedTabBarImage(), reader: reader) {
                        selectedTab = .settings
                    }
                }
                .padding(.horizontal, 50)
                .background(Color.white)
            }
        }
    }
    
    private func getSelectedTabBarImage() -> String {
        switch selectedTab {
        case .home:
            return "house"
        case .categories:
            return "tag.fill"
        case .accounts:
            return "person.crop.circle"
        case .settings:
            return "gear"
        }
    }
}

#Preview {
    ContentView()
}
