//
//  ContentView.swift
//  Firebase Kayit Olma ve Giris Auth
//
//  Created by Ege Aydemir on 11.02.2023.
//

import SwiftUI
import Firebase

class FirebaseManager: NSObject {
    
    let auth: Auth
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        
        self.auth = Auth.auth()
        
        super.init()
    }
}


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
                .autocapitalization(.none)
            SecureField("Parola", text: $parola)
                .padding()
                .font(.system(size: 20))
                .autocapitalization(.none)
            
            HStack{
                Button {
                    FirebaseManager.shared.auth.createUser(withEmail: ePosta, password: parola) {
                        result, error in
                        if error == nil {
                            return
                        }
                    }
                } label: {
                    Text("Kayit Ol")
                        .foregroundColor(.white)
                }
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
