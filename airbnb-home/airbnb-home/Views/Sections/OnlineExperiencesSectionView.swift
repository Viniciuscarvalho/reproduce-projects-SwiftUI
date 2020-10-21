//
//  OnlineExperiencesSectionView.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho on 17/10/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct OnlineExperiencesSectionView: View {
    var body: some View {
        VStack(spacing: 0) {
            SectionTitle(title: "Online Experiences: Field Tips")
            Text("Meet people all over the world while trying something new. Join live, interactive video session led by one-of-a-kind hosts--all without leaving home.")
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.leading)
                .padding(.top, 4)
            VStack(alignment: .leading, spacing: 0) {
                Button(action: {}) {}
                    Text("Explore all")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(.top, 32)
                    .frame(width: 140, height: 30)
                    .shadow(color: Color.white.opacity(0.2), radius: 10, x: 0, y: 10)
            }
            Spacer()
        }
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 12) {
//                ForEach(GenericContent.experiencesData) { item in
//                    ExperiencesCell(data: item)
//                }
//        }
        .padding()
        .background(Color.black)
    }
}

struct OnlineExperiencesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineExperiencesSectionView()
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
