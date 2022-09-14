//
//  TabBarViewModel.swift
//  Clothy
//
//  Created by Christian Nonis on 14/09/22.
//

import SwiftUI

struct TabBarViewModel: View {
    var animation: Namespace.ID
    @Binding var currentTab: TabBarModel
    var body: some View {
        HStack(spacing: 0) {
            ForEach(TabBarModel.allCases, id: \.rawValue) { tab in
                TabBarButton(animation: animation, tab: tab, currentTab: $currentTab) { pressedTab in
                    withAnimation(.spring()) {
                        currentTab = pressedTab
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top)
    }
}

struct TabBarButton: View {
    var animation: Namespace.ID
    var tab: TabBarModel
    @Binding var currentTab: TabBarModel
    var onTap: (TabBarModel) -> ()
    
    var body: some View {
        HStack {
        Image(systemName: tab.rawValue)
            .foregroundColor(currentTab == tab ? .white : .gray)
            .frame(width: 45, height: 45)
            .onTapGesture {
                onTap(tab)
            }
            if currentTab == tab {
                switch currentTab {
                case .Home:
                    Text("Home")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.leading, -12)
                        .padding(.trailing)
                case .Search:
                    Text("Esplora")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.leading, -12)
                        .padding(.trailing)
                case .Sell:
                    Text("Vendi")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.leading, -12)
                        .padding(.trailing)
                case .Profile:
                    Text("Profilo")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.leading, -12)
                        .padding(.trailing)
                }
            }
        }
        .background(
            ZStack {
                if currentTab == tab {
                    switch tab {
                    case .Home:
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.purple)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    case .Search:
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.orange)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    case .Sell:
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.cyan)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    case .Profile:
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.black)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            }
        )
        .padding(.horizontal)
        .contentShape(Rectangle())
    }
}

struct TabBarViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
