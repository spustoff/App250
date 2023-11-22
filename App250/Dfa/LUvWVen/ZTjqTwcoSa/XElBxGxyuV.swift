//
//  AycUjuEBWF.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct AycUjuEBWF: View {
    
    @Environment(\.presentationMode) var router
    
    @StateObject var MGKYSKATTn: YZeTdWGZXu
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New User")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "chevron.left")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Back")
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 17, weight: .regular))
                            }
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                .padding(.top)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Name")
                                .foregroundColor(.gray)
                                .font(.system(size: 15, weight: .regular))
                                .opacity(MGKYSKATTn.name.isEmpty ? 1 : 0)
                            
                            TextField("", text: $MGKYSKATTn.name)
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    }
                    .padding()
                }
                
                Spacer()
                
                Button(action: {
                    
                    MGKYSKATTn.jHmjYdVhEI()
                    
                    router.wrappedValue.dismiss()
                    
                }, label: {
                    
                    Text("Add")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
                .opacity(MGKYSKATTn.name.isEmpty ? 0.5 : 1)
                .disabled(MGKYSKATTn.name.isEmpty ? true : false)
            }
        }
    }
}

#Preview {
    AycUjuEBWF(MGKYSKATTn: YZeTdWGZXu())
}
