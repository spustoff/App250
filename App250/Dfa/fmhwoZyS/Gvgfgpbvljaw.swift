//
//  ProgressView.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct iXiPBPAArZ: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Keep taking the quiz and increase rate")
                        .foregroundColor(.black.opacity(0.5))
                        .font(.system(size: 17, weight: .regular))
                    
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 3, content: {
                        
                        Text("100")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .semibold))
                        
                        Text("🔥")
                            .font(.system(size: 18, weight: .regular))
                    })
                }
                .padding([.horizontal, .top])
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            
                            Text("Rating")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium))
                            
                            ForEach(["Billy", "Tom", "Emma", "Di", "Ali"], id: \.self) { index in
                            
                                HStack {
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 18, weight: .regular))
                                        .frame(width: 40, height: 40)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(.black))
                                    
                                    Text(index)
                                        .foregroundColor(.black.opacity(index == "Di" ? 1 : 0.5))
                                        .font(.system(size: 16, weight: index == "Di" ? .semibold : .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(index == "Di" ? 100 : 0)")
                                        .foregroundColor(.black)
                                        .font(.system(size: 22, weight: .semibold))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                                .overlay (
                                
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.green, lineWidth: 2)
                                        .opacity(index == "Di" ? 1 : 0)
                                )
                            }
                        })
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ProgressView()
}
