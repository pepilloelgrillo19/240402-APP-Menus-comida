//
//  Comida.swift
//  240402 APP Menus comida
//
//  Created by Luis on 2/4/24.
//

import Foundation

class Comida: Identifiable {
    let titulo : String
    let precio : Double
    let categoria: Categorias
    let id: Int
    
    init(titulo:String, precio:Double, categoria: Categorias, id: Int){
        self.titulo = titulo
        self.precio = precio
        self.categoria = categoria
        self.id = id
    }
}
