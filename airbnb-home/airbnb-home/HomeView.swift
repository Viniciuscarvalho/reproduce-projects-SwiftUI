//
//  HomeView.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho Marques on 06/08/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var home: Home
    var width: CGFloat = 270
    var height: CGFloat = 575
    
    var body: some View {
        
        // First view with big image
        
        ScrollView {
            VStack {
                home.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: height)
            }
            .cornerRadius(30)
            .shadow(color: home.color.opacity(0.3), radius: 20, x: 0, y: 20)
        }
        
        // Stack horizontal with images
        
        
    }
}

struct Home: Identifiable {
    var id = UUID()
    var text: String
    var image: Image
    var color: Color
}

let homeData = [
    Home(text: "Get out and stretch your imagination", image: Image(uiImage: #imageLiteral(resourceName: "airbnb-home-cardPrincipal")), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(home: home)
    }
}
