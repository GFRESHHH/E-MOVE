//
//  login.swift
//  E-MOVE
//
//  Created by iOS Lab on 30/04/23.
//
import SwiftUI
import MapKit

struct LoadingView: View {

    @Binding var showMap: Bool

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(2)
                Text("Cargando...")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                showMap = true // Show map view
            }
        }
    }
}

struct MapView: View {

    @State internal var showMenu = false // Define showMenu state variable

    @State private var mapView = MKMapView()

    var body: some View {
        VStack {
            // Map View
            ZStack {
                MapViewRepresentable(mapView: mapView)
                Text("Mapa")
            }
            .frame(height: 300)

            // Menu
            Button(action: {
                showMenu.toggle() // Toggle showMenu state when the button is tapped
            }) {
                Text("Mostrar menú")
            }
            
            .sheet(isPresented: $showMenu) {
                // Present the menu as a sheet when showMenu is true
                Text("Este es el menú")
                
                
                
            }
        }
    }

    struct MapViewRepresentable: UIViewRepresentable {
        let mapView: MKMapView

        func makeUIView(context: Context) -> MKMapView {
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
            return mapView
        }

        func updateUIView(_ uiView: MKMapView, context: Context) {}
    }

}

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var isLoading = false
    @State private var showMapView = false

    var body: some View {
        NavigationView {
            VStack {
                // Title
                Text("Iniciar Sesión")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                // Email
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()

                // Password
                SecureField("Contraseña", text: $password)
                    .padding()

                // Log In Button
                Button(action: {
                    isLoading = true // Start loading animation
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        // Simulate login delay of 2 seconds
                        isLoading = false // Stop loading animation
                        showMapView = true // Show map view
                    }
                }) {
                    Text("Iniciar Sesión")
                      

                            .foregroundColor(.white)
                        
                            .fontWeight(.bold)
                        
                            .padding()
                        
                            .frame(maxWidth: .infinity)
                        
                            .background(Color("BlueColor"))
                        
                            .cornerRadius(10)
                        
                            .padding()
                        
                    }
                    
                    
                    
                    Spacer()
                    
                }
                
                .padding()
                
                .overlay(
                    
                    isLoading ? LoadingView(showMap: $showMapView) : nil // Show loading view when isLoading is true
                    
                )
                
                .sheet(isPresented: $showMapView, onDismiss: {
                    
                    // TODO: Implement logic to dismiss map view
                    
                }) {
                    
                    MapView()
                    
                }
                
            }
            
        }
        
    }


