//
//  File.swift
//  E-MOVE
//
//  Created by iOS Lab on 29/04/23.
//
import SwiftUI

struct RegistrationView: View {
    
    // Properties
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var hasVehicle = false
    @State private var verificationCode = ""
    
    // View
    var body: some View {
        VStack {
            // Title
            Text("Crea tu cuenta")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            // First Name
            TextField("Nombre", text: $firstName)
                .padding()
            
            // Last Name
            TextField("Apellido", text: $lastName)
                .padding()
            
            // Email
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .padding()
            
            // Birth Date
            DatePicker("Fecha de nacimiento", selection: $birthDate, displayedComponents: .date)
                .padding()
            
            // Has Vehicle
            Toggle("¿Tienes un vehiculo personal?", isOn: $hasVehicle)
                .padding()
            
            // Verification Code
            TextField("Código de verificación", text: $verificationCode)
                .padding()
            
            // Sign Up Button
            Button(action: {
                // TODO: Implement sign up logic
            }) {
                Text("Crear cuenta")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .navigationTitle("Registro")
    }
}
