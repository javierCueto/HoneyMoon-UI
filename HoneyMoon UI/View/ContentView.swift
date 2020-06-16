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
    
    var body: some View {
        VStack{
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            CardView(honeymoon: honeymoonData[1])
            .padding()
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
