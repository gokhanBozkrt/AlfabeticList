//
//  sectionındexTitleView.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import SwiftUI

struct SectionIndexTitleView: View {
    let letter: String
    var body: some View {
        
        RoundedRectangle(cornerRadius: 8,style: .continuous)
            .foregroundColor(Color.gray.opacity(0.1))
            .frame(width: 15, height: 10)
            .overlay(
            Text(letter)
                .foregroundColor(Color.blue)
            )
    }
}

struct SectionIndexTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionIndexTitleView(letter: "W")
    }
}
