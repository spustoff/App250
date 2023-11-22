//
//  cgXOjrEisw.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI
import Alamofire

final class cgXOjrEisw: ObservableObject {
    
    @Published var MTCaFAAfId: Bool = false
    
    @AppStorage("viewed_videos") var viewed_videos: Int = 0
    
    @Published var NcnRwGkNHT: zqyhMEJBQs = zqyhMEJBQs(id: 1, categoryId: 1, title: "", image: "", video: "", duration: 1)
    @Published var dUgXmPdxJC: Bool = false
    
    @Published var EtBFNHpERT: [zqyhMEJBQs] = []
    
    func WoeIWobhMd() {
        
        MTCaFAAfId = true
        
        self.arvNvNjmLx() { result in
            
            switch result {
                
            case .success(let success):
                
                self.EtBFNHpERT = success.rows
                
            case .failure(let failure):
                
                debugPrint("Parse error - \(failure)")
                
                self.MTCaFAAfId = false
            }
        }
    }
    
    func arvNvNjmLx(completion: @escaping (Result<OecKyZfiiq, Error>) -> Void ) {
        
        MTCaFAAfId = true
        
        let params: Parameters = [
            
            "token": "b49119c0-77b8-4c68-9e2b-1471c645c928",
        ]
        
        let request = AF.request("https://buyoret.space/api/v2/video", method: .get, parameters: params)
        
        request.responseDecodable(of: OecKyZfiiq.self) { response in
            
            guard let value = response.value else {
                
                self.MTCaFAAfId = false
                return
            }
                           
            switch response.result{
                
            case .success(_):
                
                completion(.success(value))
                self.MTCaFAAfId = false
                
            case .failure(_):
                
                completion(.failure(response.error.debugDescription as! Error))
                self.MTCaFAAfId = false
            }
        }
    }
}
