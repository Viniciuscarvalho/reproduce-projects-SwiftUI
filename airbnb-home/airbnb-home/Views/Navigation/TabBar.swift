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
                Text("Explore")
            }
            
            HomeView().tabItem {
                Image("save.stack.fill")
                Text("Saved")
            }
            
            HomeView().tabItem {
                Text("Trips")
            }
            
            HomeView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Inbox")
            }
            
            HomeView().tabItem {
                Text("Profile")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
