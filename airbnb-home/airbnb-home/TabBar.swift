//
//  TabBar.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho Marques on 16/08/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "explore.fill")
                Text("Explore")
            }
            HomeView().tabItem {
                Text("Saved")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
