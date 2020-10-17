//
//  SectionTitle.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho on 17/10/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold))
                .padding(.leading)
            Spacer()
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Online Experiences: Field Tips").previewLayout(.sizeThatFits).background(Color.black)
    }
}
