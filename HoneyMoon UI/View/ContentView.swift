//
//  ContentView.swift
//  HoneyMoon UI
//
//  Created by José Javier Cueto Mejía on 16/06/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  properties
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: -  cards views
    
    var cardViews: [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(honeymoon: honeymoonData[index]))
        }
        return views
    }()
    
    // MARK: -  top card
    
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: {$0.id == cardView.id}) else {
            return false
        }
        
        return index == 0
    }
    
    var body: some View {
        VStack{
            // MARK: -  header
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            
            Spacer()
            // MARK: -  cards
            ZStack{
                ForEach(cardViews){ cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                    
                }
            }.padding(.horizontal)
            
        
            Spacer()
            // MARK: -  footer
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Success"), message: Text("Les desamos amor y el mas precioso tiempo para la pareja"), dismissButton: .default(Text("Feliz luna de miel")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
