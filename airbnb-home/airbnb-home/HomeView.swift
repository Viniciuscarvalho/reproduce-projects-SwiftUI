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
        GeometryReader { bounds in
            ScrollView {
                VStack {
                    self.home.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.width, height: self.height)
                }
                .cornerRadius(30)
                .shadow(color: self.home.color.opacity(0.3), radius: 20, x: 0, y: 20)
            }
            
            // Stack horizontal with images
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(homeData) { item in
                        GeometryReader { geometry in
                            HomeView(home: item)
                                .rotation3DEffect(Angle(degrees:
                                    Double(geometry.frame(in: .global).minX - 30) / -getAngleMultiplier(bounds: bounds)
                                ), axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width: 275, height: 275)
                    }
                }
                .padding(30)
                .padding(.bottom, 30)
            }
        }
    }
}

func getAngleMultiplier(bounds: GeometryProxy) -> Double {
    if bounds.size.width > 500 {
        return 80
    } else {
        return 20
    }
}

struct Home: Identifiable {
    var id = UUID()
    var text: String
    var image: Image
    var color: Color
}

let homeData = [
    Home(text: "Online Experiences", image: Image(uiImage: #imageLiteral(resourceName: "airbnb-home-card1")), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    Home(text: "Unique stays", image: Image(uiImage: #imageLiteral(resourceName: "airbnb-home-card2")), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))),
    Home(text: "Entire homes", image: Image(uiImage: #imageLiteral(resourceName: "airbnb-home-card3")), color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(home: self)
    }
}
