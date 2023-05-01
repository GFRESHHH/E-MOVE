//
//  ContentView.swift
//  E-MOVEAPP
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var isEmailValid: Bool = false
    @State private var isShowingVerificationAlert: Bool = false
    
    var body: some View {
        VStack {
            Text("Regístrate en E-MOVE")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            
            TextField("Correo electrónico", text: $email, onEditingChanged: { _ in
                self.isEmailValid = self.isValidEmail(email: self.email)
            })
            .padding()
            
            if !isEmailValid {
                Text("Correo electrónico no válido")
                    .foregroundColor(.red)
                    .padding(.bottom, 5)
            }
            
            SecureField("Contraseña", text: $password)
                .padding()
            
            SecureField("Confirmar contraseña", text: $confirmPassword)
                .padding()
            
            Button(action: {
                // Validar el formulario antes de enviar los datos
                if self.isValidForm() {
                    // Mostrar alerta de verificación de correo
                    self.isShowingVerificationAlert = true
                }
            }) {
                Text("Registrarse")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .alert(isPresented: $isShowingVerificationAlert) {
            Alert(title: Text("Verifica tu correo electrónico"), message: Text("Se ha enviado un correo de verificación a \(email). Sigue las instrucciones en el correo para activar tu cuenta."), dismissButton: .default(Text("OK")))
        }
    }
    
    // Validar el formulario antes de enviar los datos
    private func isValidForm() -> Bool {
        return isEmailValid && !password.isEmpty && !confirmPassword.isEmpty && password == confirmPassword
    }
    
    // Validar si un correo electrónico es válido
    private func isValidEmail(email: String) -> Bool {
        // Implementar validación de correo electrónico aquí
        return true
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
