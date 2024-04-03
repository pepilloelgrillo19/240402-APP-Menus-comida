//
//  ContentView.swift
//  240402 APP Menus comida
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: VistaPedido(categoriaActual: .mediterranea)){
                    VistaTipoComida(nombreImagen: "mediterranea", nombreComida: "Mediterránea")}
                NavigationLink(destination: VistaPedido(categoriaActual: .asiatica)){
                    VistaTipoComida(nombreImagen: "arabe", nombreComida: "Árabe")}
                NavigationLink(destination: VistaPedido(categoriaActual: .asiatica)){
                    VistaTipoComida(nombreImagen: "asiatica", nombreComida: "Asiática")}
                NavigationLink(destination: VistaPedido(categoriaActual: .hindu)){
                    VistaTipoComida(nombreImagen: "hindu", nombreComida: "Hindú")}
            }
            .navigationTitle("Haga su pedido")
        }
        
    }
}

struct VistaTipoComida: View {
    var nombreImagen: String
    var nombreComida: String
    var body : some View {
        HStack{
            Spacer()
            ZStack{
                Image(nombreImagen)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:300, height: 100)
                    .clipped()
                    .cornerRadius(20.0)
                Text(nombreComida)
                    .font(.custom("Helvetica-Medium", size:34))
                    .bold()
                    .foregroundColor(.white)
            }
            Spacer()
        }.padding(.top, 5)
            .padding(.bottom,5)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
