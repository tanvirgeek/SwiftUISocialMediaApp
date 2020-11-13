//
//  SocialMediaAppApp.swift
//  SocialMediaApp
//
//  Created by MD Tanvir Alam on 13/11/20.
//

import SwiftUI
import Firebase
@main
struct SocialMediaAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate : NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
