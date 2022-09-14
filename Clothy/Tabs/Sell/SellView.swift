//
//  SellView.swift
//  Clothy
//
//  Created by Christian Nonis on 14/09/22.
//

import SwiftUI

struct SellView: View {
    @State var postingTitle: String = ""
    
    var body: some View {
        VStack() {
            HStack {
                Text("Cosa vuoi vendere oggi?")
                    .fontWeight(.heavy)
                    .font(.title)
                Spacer()
            }
            .padding(.top, 36)
            .padding(.bottom, 2)
            HStack {
                Text("Questo sarà il titolo del tuo annuncio")
                    .font(.footnote)
                Spacer()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.white)
                    .frame(height: 60)
                    .shadow(radius: 3)
                TextField("Sneakers Gialle e Viola, modello...", text: $postingTitle)
                    .padding(.leading)
                    .frame(height: 60)
            }
            .padding(.top, 36)
            HStack {
                Text("Proseguendo accetti i termini e le condizioni d'uso")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
                Spacer()
            }
            HStack {
                Spacer()
                Button {
                    //next
                } label: {
                    Text("Avanti")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .padding(.horizontal, 36)
                .padding(.vertical, 18)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(16)
            }
            .padding(.top, 16)
            Spacer()
        }
        .edgesIgnoringSafeArea(.horizontal)
        .padding()
        .background(Color(red: 215/255, green: 240/255, blue: 255/255))
    }
}

struct SellView_Previews: PreviewProvider {
    static var previews: some View {
        SellView(postingTitle: "")
    }
}
