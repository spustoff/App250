//
//  webk.swift
//  App250
//
//  Created by Вячеслав on 11/22/23.
//

import SwiftUI
import ApphudSDK
import FirebaseRemoteConfig
import WebKit

struct lRFySPBFES: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
            
            WControllerRepresentable()
        }
        .ignoresSafeArea()
    }
}

class WController: UIViewController, WKNavigationDelegate, WKUIDelegate, UIWebViewDelegate {
    
    @AppStorage("first_open") var firstOpen: Bool = true
    @AppStorage("silka") var silka: String = ""
    
    @Published var tGDbzGBddV: URL = URL(string: "h")!
    
    var WbICPFkPfz = WKWebView()
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        MrBCtgmNhM()
    }
    
    private func MrBCtgmNhM() {
        
        fSWZITwqnw(field: "url_link", dataType: .url) { resulter in
            
            guard let url = URL(string: "\(resulter)") else { return }
            
            if let modifiedURL = self.hUNhdMxUuv(in: "\(resulter)", with: Apphud.userID()) {
                
                self.tGDbzGBddV = modifiedURL
                
            } else {
                
                self.tGDbzGBddV = url
            }
            
            self.ZUmBVPUIQZ()
        }
    }
    
    func hUNhdMxUuv(in urlString: String, with value: String) -> URL? {
        
        var newURLString = urlString

        if let range = urlString.range(of: "click_id=") {
            
            let existingIDEnd = urlString[range.upperBound...].firstIndex(where: { !$0.isNumber }) ?? urlString.endIndex
            let insertionPoint = urlString.index(range.upperBound, offsetBy: urlString.distance(from: range.upperBound, to: existingIDEnd))
            
            newURLString.insert(contentsOf: value, at: insertionPoint)
            
        } else {
            
            let separator = urlString.contains("?") ? "&" : "?"
            newURLString += "\(separator)click_id=\(value)"
        }
        
        return URL(string: newURLString)
    }
    
    private func ZUmBVPUIQZ() {
        
        var request: URLRequest?
        
        if silka == "about:blank" || silka.isEmpty {
            
            request = URLRequest(url: self.tGDbzGBddV)
            
            self.silka = tGDbzGBddV.absoluteString
        }
        
        let cookies = HTTPCookieStorage.shared.cookies ?? []
        let headers = HTTPCookie.requestHeaderFields(with: cookies)
        request?.allHTTPHeaderFields = headers
        
        DispatchQueue.main.async {
            
            self.HTNCciSdet()
        }
    }
    
    private func HTNCciSdet() {
        
        guard let url = URL(string: silka) else { return }
        
        view.backgroundColor = .white
        view.addSubview(WbICPFkPfz)
        WbICPFkPfz.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            WbICPFkPfz.topAnchor.constraint(equalTo: view.topAnchor),
            WbICPFkPfz.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            WbICPFkPfz.leftAnchor.constraint(equalTo: view.leftAnchor),
            WbICPFkPfz.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        WbICPFkPfz.customUserAgent = "Mozilla/5.0 (Linux; Android 11; AOSP on x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36"
        WbICPFkPfz.allowsBackForwardNavigationGestures = true
        WbICPFkPfz.uiDelegate = self
        WbICPFkPfz.navigationDelegate = self
        
        WbICPFkPfz.load(URLRequest(url: url))
        
        xhxjVzrXuP()
    }
    
    func WbICPFkPfz(_ WbICPFkPfz: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {
        
        guard let url = navigationAction.request.url else { return }
        silka = "\(url)"
//        print("Сохранённая ссылка: \(silka)")
        iJWSuESwlO()
        decisionHandler(.allow)
    }
    
    func WbICPFkPfz(_ WbICPFkPfz: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        
        if navigationAction.targetFrame == nil {
            
            WbICPFkPfz.load(navigationAction.request)
        }
        
        return nil
    }
    
    func iJWSuESwlO() {
        let cookieJar: HTTPCookieStorage = HTTPCookieStorage.shared
        if let cookies = cookieJar.cookies {
            let data: Data = NSKeyedArchiver.archivedData(withRootObject: cookies)
            let ud: UserDefaults = UserDefaults.standard
            ud.set(data, forKey: "cookie")
        }
    }
    
    func xhxjVzrXuP() {
        let ud: UserDefaults = UserDefaults.standard
        let data: Data? = ud.object(forKey: "cookie") as? Data
        if let cookie = data {
            let datas: NSArray? = NSKeyedUnarchiver.unarchiveObject(with: cookie) as? NSArray
            if let cookies = datas {
                for c in cookies {
                    if let cookieObject = c as? HTTPCookie {
                        HTTPCookieStorage.shared.setCookie(cookieObject)
                    }
                }
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
    }
}

struct WControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = WController
    
    func makeUIViewController(context: Context) -> WController {
        
        return WController()
    }
    
    func updateUIViewController(_ uiViewController: WController, context: Context) {}
}

func fSWZITwqnw(field: String, dataType: DataType, completion: @escaping (Any) -> Void) {
    
    let config = RemoteConfig.remoteConfig()
    
    config.configSettings.minimumFetchInterval = 300
    config.fetchAndActivate{ _, _ in
        
        if dataType == .bool {
            
            completion(config.configValue(forKey: field).boolValue)
            
        } else if dataType == .url {
            
            guard let url_string = config.configValue(forKey: field).stringValue, let url = URL(string: url_string) else {
                
                return
            }
            
            completion(url)
        }
    }
}

enum DataType: CaseIterable {
    
    case bool, url
}
