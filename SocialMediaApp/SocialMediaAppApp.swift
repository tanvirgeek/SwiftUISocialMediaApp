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
                .onOpenURL { (url) in
                    Auth.auth().canHandle(url)
                }
        }
    }
}

class AppDelegate : NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
}
