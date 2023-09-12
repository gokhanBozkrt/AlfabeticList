//
//  SectionIndexTitlesView.swift
//  SectionedAlfabeticList
//
//  Created by Gökhan Bozkurt on 11.09.2023.
//

import SwiftUI

struct SectionIndexTitlesView: View {
    let proxy: ScrollViewProxy
    let titles: [String]
    @GestureState private var dragLocation: CGPoint = .zero
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(titles,id: \.self) { letter in
                    SectionIndexTitleView(letter: letter)
                        .background(dragObserver(title: letter))
                        
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height , alignment: .trailing)
            .gesture(
                DragGesture(minimumDistance: 0, coordinateSpace: .global)
                    .updating($dragLocation, body: { value, state, _ in
                        state = value.location
                    })
        )
        }
    }
    func dragObserver(title: String) -> some View {
        GeometryReader { geo in
            dragObserver(geometry: geo, title: title)
        }
    }
    func dragObserver(geometry: GeometryProxy,title: String) -> some View {
        if geometry.frame(in: .global).contains(dragLocation) {
            DispatchQueue.main.async {
                proxy.scrollTo(title,anchor: .center)
            }
        }
        return Rectangle().fill(Color.clear)
    }
}


