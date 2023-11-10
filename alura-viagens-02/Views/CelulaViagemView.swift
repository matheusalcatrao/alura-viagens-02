//
//  CelulaViagemView.swift
//  alura-viagens-02
//
//  Created by Matheus Cepil Alcatrao on 06/11/23.
//

import SwiftUI

struct CelulaViagemView: View {
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem).resizable().frame(height: 125)
            HStack() {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
    }
}
