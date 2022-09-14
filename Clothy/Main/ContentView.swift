//
//  ContentView.swift
//  Clothy
//
//  Created by Christian Nonis on 14/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @State private var currentTab: TabBarModel = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentTab) {
                HomeView()
                    .tag(TabBarModel.Home)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04))
                SearchView()
                    .tag(TabBarModel.Search)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04))
                SellView()
                    .tag(TabBarModel.Sell)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04))
                ProfileView()
                    .tag(TabBarModel.Profile)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.04))
            }
            TabBarViewModel(animation: animation, currentTab: $currentTab)
                .background(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
