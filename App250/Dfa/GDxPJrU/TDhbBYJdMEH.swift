//
//  exjGxYiTHD.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct exjGxYiTHD: View {
    
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
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            
                            Text("Quiz")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium))
                            
                            ForEach(["Basic Level", "Bitcoin Master", "Ethereum Master", "XRP Master"], id: \.self) { index in
                            
                                Image("testing_img")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .overlay (
                                    
                                        VStack {
                                            
                                            Text("you need to watch 15 lessons to try our quizzes")
                                                .foregroundColor(.black)
                                                .font(.system(size: 14, weight: .regular))
                                                .padding(10)
                                                .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                                            
                                            Spacer()
                                            
                                            HStack {
                                                
                                                Text(index)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 23, weight: .semibold))
                                                
                                                Spacer()
                                                
                                                Text("5 min")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .semibold))
                                            }
                                        }
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                            .padding()
                                            .background(
                                            
                                                Color.black.opacity(0.5)
                                                    .cornerRadius(15)
                                            )
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
    exjGxYiTHD()
}
