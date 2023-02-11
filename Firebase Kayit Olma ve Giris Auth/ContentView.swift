//
//  ContentView.swift
//  Firebase Kayit Olma ve Giris Auth
//
//  Created by Ege Aydemir on 11.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var ePosta: String = ""
    @State var parola: String = ""
    var body: some View {
        VStack {
          Image(systemName: "person.fill")
                .font(.system(size: 70))
                .foregroundColor(.blue)
                .padding()
            TextField("E-posta", text: $ePosta)
                .padding()
                .font(.system(size:20))
            SecureField("Parola", text: $parola)
                .padding()
                .font(.system(size: 20))
            
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Kayit Ol")
                        .foregroundColor(.white)
                })
                .modifier(ButtonModifiers())
                .padding()
                Button(action: {
                    
                }, label: {
                    
                    Text("Giris Yap")
                        .foregroundColor(.white)
                    
                })
                .modifier(ButtonModifiers())
                
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
