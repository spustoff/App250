//
//  VchSqSWVDR.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct VchSqSWVDR: View {
    
    @Binding var dIPLeajkkY: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    dIPLeajkkY = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 6, content: {
                        
                        Image(index.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(dIPLeajkkY == index ? .black : Color.gray)
                            .frame(width: 25, height: 25)
                        
                        Text(index.rawValue)
                            .foregroundColor(dIPLeajkkY == index ? .black : Color.gray)
                            .font(.system(size: 13, weight: .regular))
                    })
                    .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 7)
        .padding(.bottom, 26)
        .background(Color("bg"))
    }
}

enum Tab: String, CaseIterable {
    
    case Training = "Training"
    
    case Testing = "Testing"
    
    case Progress = "Progress"
    
    case Profile = "Profile"
    
}

#Preview {
    vGXIkIIDXI()
}
