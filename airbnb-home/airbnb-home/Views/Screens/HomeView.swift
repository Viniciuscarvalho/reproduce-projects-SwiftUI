//
//  HomeView.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho Marques on 06/08/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                        Image("airbnb-home-cardPrincipal")
                            .resizable()
                            .cornerRadius(6)
                            .frame(width: 315, height: 400)
                            .foregroundColor(.white)
                    }
                }
                .padding(16)
                .padding(.trailing, 16)
                .padding(.leading, 16)
                
                ExperiencesSectionView()
                SectionTitle(title: "Online Experiences: Field Tips")
                OnlineExperiencesSectionView()
            }
            .padding(.bottom, 30)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
