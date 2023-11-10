//
//  HeaderView.swift
//  alura-viagens-02
//
//  Created by Matheus Cepil Alcatrao on 06/11/23.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        
        GeometryReader{ view in
            VStack{
                VStack{
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.bottom, 10)
                        .padding(.top, self.horizontalSizeClass == .compact ? 10 : 90)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                }
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 220 : 310, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width / 4)
                    
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes").font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24)).foregroundColor(Color.white)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width / 4)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -30 : -37.5)
            }
        }
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 400, height: 220))
            // Mudar o preview do layout
    }
}
