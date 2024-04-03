//
//  VistaPedido.swift
//  240402 APP Menus comida
//
//  Created by Luis on 2/4/24.
//

import SwiftUI

struct VistaPedido: View {
    var categoriaActual: Categorias
    var body: some View {
        List(filtrarDatos(by: categoriaActual)){
            comida in DetalleComida(comida: comida)
        }
    }
}

struct VistaPedido_Previews: PreviewProvider {
    static var previews: some View {
        VistaPedido(categoriaActual: .mediterranea)
    }
}
