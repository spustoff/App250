//
//  JTrUTyLIno.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct JTrUTyLIno: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("logo_big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            ProgressView()
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding()
        }
    }
}

#Preview {
    JTrUTyLIno()
}
