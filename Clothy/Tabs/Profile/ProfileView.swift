//
//  ProfileView.swift
//  Clothy
//
//  Created by Christian Nonis on 14/09/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 200, height: 200)
                Button {
                    print("changing..")
                } label: {
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                    }
                }
                .offset(x: 70, y: 70)
            }
            .padding(.top, 36)
            Text("Nome Cognome")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.top)
            Spacer()
        }
        .background(Color(red: 245/255, green: 245/255, blue: 245/255))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
