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
        HStack(spacing: 0) {
            SectionTitle(title: "Online Experiences: Field Tips")
        }
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 12) {
//                ForEach(GenericContent.experiencesData) { item in
//                    ExperiencesCell(data: item)
//                }
//        }
        .frame(width: 400, height: 400)
        .padding(.top, 4)
        .background(Color.black)
    }
}

struct OnlineExperiencesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineExperiencesSectionView()
            .previewLayout(.sizeThatFits)
    }
}
