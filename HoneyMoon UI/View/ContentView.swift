//
//  ContentView.swift
//  HoneyMoon UI
//
//  Created by José Javier Cueto Mejía on 16/06/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            //HeaderView()
            CardView(honeymoon: honeymoonData[1])
            .padding()
            //FooterView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
