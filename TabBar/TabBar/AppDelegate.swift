//
//  AppDelegate.swift
//  TabBar
//
//  Created by 이지훈 on 2022/07/31.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    //Global Variable
    var forthVC : ForthViewController? = nil
    var myTabBar : MyTabberController? = nil


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
       
        
        
    }


}

