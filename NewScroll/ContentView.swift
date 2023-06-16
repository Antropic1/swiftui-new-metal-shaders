//
//  ContentView.swift
//  NewScroll
//
//  Created by Astemir Eleev on 08/06/2023.
//

import SwiftUI
import Observation

struct ContentView: View {
    @Bindable private var model = Model()
    
    var body: some View {
        NavigationStack{
            List{
                lazy var veticalStackTitle = "Vertical Stack"
                NavigationLink(veticalStackTitle) {
                    VerticalStack(model: model)
                        .navigationTitle(veticalStackTitle)
                }
                
                lazy var horizontalDeckTitle = "Horizontal Deck"
                NavigationLink(horizontalDeckTitle) {
                    HorizontalDeck(model: model)
                        .navigationTitle(horizontalDeckTitle)
                }
                
                lazy var horizontalShowcase = "Horizontal Showcase"
                NavigationLink(horizontalShowcase) {
                    OversettableStoreScrollView(model: model)
                        .navigationTitle(horizontalShowcase)
                }
                
                lazy var oversettableZStack = "Depth Stack"
                NavigationLink(oversettableZStack) {
                    OversettableCardStack()
                        .navigationTitle(oversettableZStack)
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
        .previewDisplayName("ContentView")
}
