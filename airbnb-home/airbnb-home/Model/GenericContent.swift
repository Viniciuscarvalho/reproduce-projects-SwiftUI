//
//  GenericContent.swift
//  airbnb-home
//
//  Created by Vinicius Carvalho on 14/10/20.
//  Copyright © 2020 Vinicius Carvalho. All rights reserved.
//

import Foundation

struct GenericContent: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String?
    var imageName: String
    
    static let experiencesData: [GenericContent] = [
        GenericContent(title: "Unique stays", subtitle: "Spaces that are more than just a place to sleep", imageName: "airbnb-home-card2"),
        GenericContent(title: "Online Experiences", subtitle: "Unique activities we can do together, led by a world of hosts", imageName: "airbnb-home-card3"),
        GenericContent(title: "Entire homes", subtitle: "Comfortable private places, with room for friends or family", imageName: "airbnb-home-card1")
    ]
}
