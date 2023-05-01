//
//  ContentView.swift
//  E-MOVE
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido a la app de movilidad")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                NavigationLink(destination: HomeView()) {
                    Text("Iniciar sesión / Crear cuenta")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
