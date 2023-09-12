//
//  RowView.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import SwiftUI

struct RowView: View {
    let text: String
    var body: some View {
        Text(text)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(text: "text")
    }
}
