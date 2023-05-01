//
//  home view.swift
//  E-MOVE
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Inicio de sesión / Crear cuenta")
                .font(.title)
                .padding()
            
            NavigationLink(destination: RegistrationView()) {
                Text("Crear una cuenta")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
            
            NavigationLink(destination: LoginView()) {
                Text("Iniciar sesión")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}
