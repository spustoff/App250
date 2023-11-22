//
//  oeztPmUOFI.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI
import FirebaseCore
import ApphudSDK
import Alamofire
import OneSignalFramework
import Amplitude

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Apphud.start(apiKey: "app_Ne3zAwZ9SYYzjSAPv8gUi5Fhk1CFEH")
        
        wibDlWwjTS()
        
        OneSignal.initialize("030baf23-25df-4953-a340-aeb137213f76", withLaunchOptions: launchOptions)
        Amplitude.instance().initializeApiKey("6d89d000e251b8ce4fcadb09f2f3254d")
        
        Amplitude.instance().defaultTracking.sessions = true
        Amplitude.instance().setUserId(Apphud.userID())
        OneSignal.login(Apphud.userID())
        
        FirebaseApp.configure()
        
        return true
    }
}

func wibDlWwjTS() {
    
    let url = "https://onesignal-ba.com/api/os/hJlcH1yyko8jy4EbYFpt/\(Apphud.userID())"
    
    let request = AF.request(url, method: .get)
    
    request.response { response in
                       
        switch response.result {
            
        case .success(_):
            
            print("ok")
            
        case .failure(_):
            
            print("failure")
        }
    }
}

@main
struct oeztPmUOFI: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView(content: {
                
                vGXIkIIDXI()
            })
        }
    }
}
