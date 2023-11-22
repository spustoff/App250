//
//  ZJxiBsqTOT.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI

struct ZJxiBsqTOT: View {
    
    @StateObject var MGKYSKATTn = cgXOjrEisw()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Text("Di, ")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .semibold)) +
                    
                    Text("increase your score on the quiz")
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
                    
                    LazyVStack(spacing: 25) {
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            
                            Text("Currency Chart")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .medium))
                            
                            NavigationLink(destination: {
                                
                                zKHmfZNOhP()
                                    .navigationBarBackButtonHidden()
                                
                            }, label: {
                                
                                Image("card")
                                    .resizable()
                            })
                        })
                        
                        if MGKYSKATTn.MTCaFAAfId {
                            
                            ProgressView()
                                .padding(.vertical, 150)
                            
                        } else {
                            
                            if MGKYSKATTn.EtBFNHpERT.isEmpty {
                                
                                VStack(alignment: .center, spacing: 7, content: {
                                    
                                    Image("empty")
                                    
                                    Text("Empty")
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .semibold))
                                        .multilineTextAlignment(.center)
                                    
                                    Text("You don't have any properties added yet")
                                        .foregroundColor(.black)
                                        .font(.system(size: 13, weight: .regular))
                                        .multilineTextAlignment(.center)
                                })
                                .padding(.vertical, 150)
                                
                            } else {
                                
                                VStack(alignment: .leading, spacing: 19, content: {
                                    
                                    Text("Best of the month")
                                        .foregroundColor(.black)
                                        .font(.system(size: 19, weight: .semibold))
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        
                                        HStack {
                                            
                                            ForEach(Array(MGKYSKATTn.EtBFNHpERT).shuffled().prefix(4), id: \.self) { index in
                                                
                                                Button(action: {
                                                    
                                                    MGKYSKATTn.NcnRwGkNHT = index
                                                    MGKYSKATTn.dUgXmPdxJC = true
                                                    
                                                }, label: {
                                                    
                                                    VStack(alignment: .leading, spacing: 15, content: {
                                                        
                                                        eBVMIKLGQZ(urlString: index.image ?? "", width: 150, height: 100, cornerRadius: 10, isPlaceholder: true)
                                                        
                                                        Text(index.title ?? "")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15, weight: .medium))
                                                            .frame(width: 140)
                                                            .multilineTextAlignment(.leading)
                                                            .lineLimit(2)
                                                    })
                                                })
                                            }
                                        }
                                    }
                                })
                                
                                VStack(alignment: .leading, spacing: 19, content: {
                                    
                                    Text("The most important")
                                        .foregroundColor(.black)
                                        .font(.system(size: 19, weight: .semibold))
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        
                                        HStack {
                                            
                                            ForEach(Array(MGKYSKATTn.EtBFNHpERT).shuffled().prefix(7), id: \.self) { index in
                                                
                                                Button(action: {
                                                    
                                                    MGKYSKATTn.viewed_videos += 1
                                                    MGKYSKATTn.NcnRwGkNHT = index
                                                    MGKYSKATTn.dUgXmPdxJC = true
                                                    
                                                }, label: {
                                                    
                                                    VStack(alignment: .leading, spacing: 15, content: {
                                                        
                                                        eBVMIKLGQZ(urlString: index.image ?? "", width: 150, height: 100, cornerRadius: 10, isPlaceholder: true)
                                                        
                                                        Text(index.title ?? "")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15, weight: .medium))
                                                            .frame(width: 140)
                                                            .multilineTextAlignment(.leading)
                                                            .lineLimit(2)
                                                    })
                                                })
                                            }
                                        }
                                    }
                                })
                                
                                VStack(alignment: .leading, spacing: 19, content: {
                                    
                                    Text("General directory")
                                        .foregroundColor(.black)
                                        .font(.system(size: 19, weight: .semibold))
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        
                                        HStack {
                                            
                                            ForEach(Array(MGKYSKATTn.EtBFNHpERT).shuffled().prefix(4), id: \.self) { index in
                                                
                                                Button(action: {
                                                    
                                                    MGKYSKATTn.viewed_videos += 1
                                                    MGKYSKATTn.NcnRwGkNHT = index
                                                    MGKYSKATTn.dUgXmPdxJC = true
                                                    
                                                }, label: {
                                                    
                                                    VStack(alignment: .leading, spacing: 15, content: {
                                                        
                                                        eBVMIKLGQZ(urlString: index.image ?? "", width: 150, height: 100, cornerRadius: 10, isPlaceholder: true)
                                                        
                                                        Text(index.title ?? "")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15, weight: .medium))
                                                            .frame(width: 140)
                                                            .multilineTextAlignment(.leading)
                                                            .lineLimit(2)
                                                    })
                                                })
                                            }
                                        }
                                    }
                                })
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            
            MGKYSKATTn.WoeIWobhMd()
        }
        .sheet(isPresented: $MGKYSKATTn.dUgXmPdxJC, content: {
            
            LtSUZIDjhe(index: MGKYSKATTn.NcnRwGkNHT)
        })
    }
}

#Preview {
    ZJxiBsqTOT()
}
