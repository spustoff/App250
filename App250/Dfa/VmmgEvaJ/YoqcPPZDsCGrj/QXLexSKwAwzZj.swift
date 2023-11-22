//
//  zKHmfZNOhP.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct zKHmfZNOhP: View {
    
    @Environment(\.presentationMode) var router
    
    @State var FgkMfGoUfp: String = "EURUSD"
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Currency Chart")
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
                
                HStack(alignment: .center, spacing: 5, content: {
                    
                    Text("$ \(Int.random(in: 1...255555))")
                        .foregroundColor(.black)
                        .font(.system(size: 19, weight: .semibold))
                    
                    Text("$ \(Int.random(in: 1...255555))")
                        .foregroundColor(.green)
                        .font(.system(size: 14, weight: .regular))
                        .padding(7)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.green.opacity(0.2)))
                    
                    Spacer()
                })
                .padding(.horizontal)
                
                RiAMPSBCgY(pair: FgkMfGoUfp)
                    .disabled(true)
                
                Menu {
                    
                    ForEach(["EURUSD", "EURTRY", "EURKZT", "EURJPY", "EURCAD", "EURRUB"], id: \.self) { index in
                    
                        Button(action: {
                            
                            FgkMfGoUfp = index
                            
                        }, label: {
                            
                            HStack {
                                
                                Text(index)
                                
                                Spacer()
                                
                                if FgkMfGoUfp == index {
                                    
                                    Image(systemName: "checkmark")
                                }
                            }
                        })
                    }
                    
                } label: {
                    
                    HStack {
                        
                        Text(FgkMfGoUfp)
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.black)
                            .font(.system(size: 13, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.white))
                    .padding()
                }
                
                HStack {
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
                    }, label: {
                        
                        Text("Apply")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.green))
                    })
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
                    }, label: {
                        
                        Text("Close")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.red))
                    })
                }
                .padding([.horizontal, .bottom])
            }
        }
    }
}

#Preview {
    zKHmfZNOhP()
}
