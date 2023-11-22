//
//  YZeTdWGZXu.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

final class YZeTdWGZXu: ObservableObject {
    
    @AppStorage("users") var users: [String] = []
    @AppStorage("selected_users") var selected_users: [String] = []
    
    @Published var uaofEsNwqQ: Bool = false
    
    @Published var name: String = ""
    
    func jHmjYdVhEI() {
        
        guard !users.contains(name) else { return }
        
        users.append(name)
        
        name = ""
    }
    
    func yWOUMtLwvu(_ user: String) {
        
        if selected_users.contains(user) {
            
            if let index = selected_users.firstIndex(of: user) {
                
                selected_users.remove(at: index)
            }
            
        } else {
            
            selected_users.append(user)
        }
    }
    
    func MjinOZLojA(_ user: String) -> Bool {
        
        return selected_users.contains(user)
    }
}
