//
//  oVUzWDGjcO.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct oVUzWDGjcO: View {
    
    @StateObject var MGKYSKATTn = YZeTdWGZXu()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                if MGKYSKATTn.users.isEmpty {
                    
                    VStack(alignment: .center, spacing: 8, content: {
                        
                        Text("No users")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Added users will appear here")
                            .foregroundColor(.black.opacity(0.6))
                            .font(.system(size: 15, weight: .regular))
                        
                        Button(action: {
                            
                            MGKYSKATTn.uaofEsNwqQ = true
                            
                        }, label: {
                            
                            Text("Add")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                                .padding()
                                .padding(.horizontal, 50)
                        })
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        
                        Button(action: {
                            
                            MGKYSKATTn.uaofEsNwqQ = true
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13, weight: .bold))
                                    .frame(width: 20, height: 20)
                                    .background(Circle().fill(.black))
                                
                                Text("New")
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .medium))
                            }
                            .padding()
                        })
                        
                        ScrollView(.vertical, showsIndicators: true) {
                            
                            LazyVStack {
                                
                                ForEach(MGKYSKATTn.users, id: \.self) { index in
                                
                                    Button(action: {
                                        
                                        MGKYSKATTn.yWOUMtLwvu(index)
                                        
                                    }, label: {
                                        
                                        HStack {
                                            
                                            Circle()
                                                .stroke(.gray.opacity(0.25), lineWidth: 2)
                                                .frame(width: 20, height: 20)
                                                .overlay (
                                                
                                                    Circle()
                                                        .fill(Color("primary"))
                                                        .frame(width: 20, height: 20)
                                                        .overlay (
                                                        
                                                            Image(systemName: "checkmark")
                                                                .foregroundColor(.white)
                                                                .font(.system(size: 9, weight: .bold))
                                                        )
                                                        .opacity(MGKYSKATTn.MjinOZLojA(index) ? 1 : 0)
                                                )
                                            
                                            Text(index)
                                                .foregroundColor(.black)
                                                .font(.system(size: 16, weight: .medium))
                                            
                                            Spacer()
                                        }
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                                    })
                                }
                            }
                            .padding()
                        }
                    })
                }
            }
        }
        .sheet(isPresented: $MGKYSKATTn.uaofEsNwqQ, content: {
            
            AycUjuEBWF(MGKYSKATTn: MGKYSKATTn)
        })
    }
}

#Preview {
    oVUzWDGjcO()
}
