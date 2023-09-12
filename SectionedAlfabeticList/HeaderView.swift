//
//  HeaderView.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "title")
    }
}
