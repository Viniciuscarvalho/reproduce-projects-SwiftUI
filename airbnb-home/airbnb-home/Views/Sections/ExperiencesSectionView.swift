//
//  ExperiencesSectionView.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho on 14/10/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct ExperiencesSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(GenericContent.experiencesData) { item in
                    ExperiencesCell(data: item)
                }
            }
            .padding()
            .padding(.top, -16)
        }
    }
}

struct ExperiencesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesSectionView()
            .previewLayout(.sizeThatFits)
    }
}
