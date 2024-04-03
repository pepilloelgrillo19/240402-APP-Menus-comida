//
//  DetalleComida.swift
//  240402 APP Menus comida
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct DetalleComida: View {
    var comida : Comida
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(comida.titulo)
                    .font(.headline)
                    .padding(.top,10)
                Text("\(comida.precio, specifier: "%2.2f")€")
                    .font(.caption)
                Button(action: {print("\(comida.titulo) - Pedido recibido")}){
                    Text("Pedir")
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 50)
                .background(Color.orange)
                .cornerRadius(10.0)
            }
            .padding(20)
        }
    }
}

struct DetalleComida_Previews: PreviewProvider {
    static var previews: some View {
        DetalleComida(comida: fullMenu[0])
    }
}
