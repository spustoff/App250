//
//  Exts+RiAMPSBCgY.swift
//  App250
//
//  Created by Вячеслав on 11/20/23.
//

import SwiftUI
import WebKit

struct RiAMPSBCgY: UIViewRepresentable {
    
    var pair: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ WbICPFkPfz: WKWebView, context: Context) {
        
        let htmlstring = """

        <div style="background-color:#FFFFFF;">
            <div style="background-color:#FFFFFF;" class="tradingview-widget-container">
              <div id="tradingview_22f32"></div>
              <div style="background-color:#FFFFFF;" class="tradingview-widget-copyright"><a href="https://ru.tradingview.com/symbols/BTCUSDT/?exchange=BINANCE" rel="noopener" target="_blank"><span class="blue-text"></span></a></div>
              <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
              <script type="text/javascript">
              new TradingView.widget(
              {
                "autosize": true,
                "symbol": "FX_IDC:\(pair)",
                "interval": "90",
                "timezone": "Etc/UTC",
                "theme": "light",
                "style": "3",
                "locale": "en",
                "toolbar_bg": "#FFFFFF",
                "enable_publishing": false,
                "hide_top_toolbar": true,
                "studies": [
                       
                ],
                "save_image": false,
                "container_id": "tradingview_cf2c9"

            }
              );
              </script>
            </div>
        </div>
        """
        
        WbICPFkPfz.isOpaque = false
        WbICPFkPfz.backgroundColor = UIColor.clear
        WbICPFkPfz.frame.size.height = 1
        WbICPFkPfz.frame.size = WbICPFkPfz.sizeThatFits(CGSize.zero)
        WbICPFkPfz.loadHTMLString(htmlstring, baseURL: nil)
    }
}


