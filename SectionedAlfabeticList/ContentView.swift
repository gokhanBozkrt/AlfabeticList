//
//  ContentView.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var countryVM = CountryData()
    var body: some View {
        ScrollViewReader { proxy in
            List {
                ForEach(countryVM.countryDictionary.sorted(by: { $0.key < $1.key }),id: \.key) { letter,countries in
                    Section {
                        ForEach(countries,id: \.self) { country in
                            RowView(text: country)
                        }
                    } header: {
                        HeaderView(title: letter)
                    }

                }
            }
            .listStyle(.insetGrouped)
            .overlay(sectionIndexTitles(proxy: proxy))
        }
    }
    
    private  func sectionIndexTitles(proxy: ScrollViewProxy) -> some View {
        SectionIndexTitlesView(proxy: proxy, titles: countryVM.countryDictionary.keys.sorted())
            .frame(maxWidth: .infinity,alignment: .trailing)
            .padding([.leading],1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
