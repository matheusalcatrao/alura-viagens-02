//
//  ContentView.swift
//  alura-viagens-02
//
//  Created by Matheus Cepil Alcatrao on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader{ view in
            VStack{
                HeaderView().frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 220 : 340, alignment: .top)
                List(viagens) { viagem in
                    CelulaViagemView(viagem: viagem)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
