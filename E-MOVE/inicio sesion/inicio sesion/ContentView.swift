//
//  ContentView.swift
//  inicio sesion
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct MenuContent: View {
    var body: some View {
        ZStack {
            
        }
    }
}

struct ContentView: View {
    @State var text = ""
    @State private var showCarView = false
    @State private var showBikeView = false
    @State private var showWalkView = false
    @State private var showBusView = false
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 0){
                //Barra con menú
                ZStack {
                    Image("mapa")
                        .ignoresSafeArea()
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                                .frame(height: 100)
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color("1B998B"))
                                .frame(height: 60)
                                .offset(y:-60)
                            HStack {
                                Spacer()
                                Text("menu")
                                Text("E move")
                                    .bold()
                                    .font(.largeTitle)
                                
                                    .padding()
                                Spacer()
                                
                            }
                        
                            
                        }
                        .offset(y: -220)
                       
                        //Barra de búsqueda
                        ZStack {
                            //Cuadro
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 395, height:250)
                                .foregroundColor(.white)
                                .offset(y: 30)
                            
                            VStack {
                                //Búsqueda
                                TextField("Lugar de destino", text: $text)
                                    .padding(.horizontal)
                                    .padding(.vertical, 15)
                                    .background(Color("D9D9D9"))
                                    .cornerRadius(100)
                                    .frame(width: 350, height: 50)
                                Spacer()
                                    .frame(height: 40)
                                
                                //Botones
                                
                                HStack (spacing: 50){
                                    
                                    NavigationLink(destination: CarView()) {
                                        Image(systemName: "car.fill")
                                    }
                                    NavigationLink(destination: bikeView()) {
                                        Image(systemName: "bicycle")
                                    }
                                    NavigationLink(destination: CarView()) {
                                        Image(systemName: "figure.walk")
                                    }
                                    NavigationLink(destination: CarView()) {
                                        Image(systemName: "bus.fill")
                                    }
                                    
                                }
                                
                            }
                            //Barra turquesa
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color("1B998B"))
                                .frame(height: 40)
                                .offset(y:120)
                        }
                        .offset(y: 225)
                        
                    }
                    
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
