//
//  Firebase_Kayit_Olma_ve_Giris_AuthApp.swift
//  Firebase Kayit Olma ve Giris Auth
//
//  Created by Ege Aydemir on 11.02.2023.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct Firebase_Kayit_Olma_ve_Giris_AuthApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
