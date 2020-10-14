//
//  ExperiencesCell.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho on 14/10/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import SwiftUI

struct ExperiencesCell: View {
    var data: GenericContent
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.imageName)
                .resizable()
                .cornerRadius(4)
                .frame(width: 180, height: 130)
            Text(data.title)
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .font(.subheadline)
            
        }
    }
}

struct ExperiencesCell_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesCell(data: GenericContent.experiencesData[0])
            .previewLayout(.sizeThatFits)
    }
}
