//
//  ContentView.swift
//  ANIMACION
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            LottieView(name: "99627-loading-blocks", loopMode: .loop)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
