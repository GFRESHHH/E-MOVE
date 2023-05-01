//
//  ContentView.swift
//  LOTTIETUTORIAL
//
//  Created by iOS Lab on 29/04/23.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RegistrationView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Registration")
                }
            
            // Add more tabs here as needed
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RegistrationView: View {
    
    // Properties
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var hasVehicle = false
    
    // View
    var body: some View {
        NavigationView {
            VStack {
                // Title
                Text("Create your account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                // First Name
                TextField("First Name", text: $firstName)
                    .padding()
                
                // Last Name
                TextField("Last Name", text: $lastName)
                    .padding()
                
                // Email
                TextField("Email Address", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                
                // Birth Date
                DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                    .padding()
                
                // Has Vehicle
                Toggle("Do you have a personal vehicle?", isOn: $hasVehicle)
                    .padding()
                
                // Sign Up Button
                Button(action: {
                    // TODO: Implement sign up logic
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("GreenColor"))
                        .cornerRadius(10)
                        .padding()
                }
                
                // Terms and Privacy Policy
                Text("By signing up, you agree to our Terms and Privacy Policy.")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            .navigationTitle("Registration")
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
