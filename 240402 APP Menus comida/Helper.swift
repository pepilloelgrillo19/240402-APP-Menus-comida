//
//  Helper.swift
//  240402 APP Menus comida
//
//  Created by Luis on 2/4/24.
//

import Foundation

enum Categorias{
    case mediterranea
    case arabe
    case asiatica
    case hindu
}

func filtrarDatos(by categoria:Categorias)-> [Comida]{
    var arrayFiltrado = [Comida]()
    
    for comida in fullMenu {
        if comida.categoria == categoria{
            arrayFiltrado.append(comida)
        }
    }
    return arrayFiltrado
}
