//
//  File.swift
//  inicio sesion
//
//  Created by iOS Lab on 30/04/23.
//

import SwiftUI

struct CarView: View {
    var body: some View {
        ZStack {
            Image("auto")
                .ignoresSafeArea()
            VStack {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("turquesa"))
                        .frame(height: 60)
                        .offset(y:-60)
                }
            }
        }
    }
}


struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView()
    }
}

