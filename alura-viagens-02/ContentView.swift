//
//  ContentView.swift
//  alura-viagens-02
//
//  Created by Matheus Cepil Alcatrao on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ view in
            VStack{
                VStack{
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.bottom, 10)
                        .padding(.top, 10)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                   
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: 50)
                    
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes").font(.custom("Avenir Medium", size: 17)).foregroundColor(Color.white)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                    .offset(x: -50)
                }
                .offset(y: -30)
                
                List {
                    Text("Praia grande")
                    Text("Praia de Atibaia")
                    Text("Praia de Maresias")
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
