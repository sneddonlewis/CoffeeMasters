//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Lewis Sneddon on 12/01/2025.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")!
        webView.load(URLRequest(url: url))
        
        let name = UserDefaults.standard.string(forKey: "name") ?? ""
        webView.evaluateJavaScript("injectFormData('\(name)')")
    }
    
    func executeJavaScript(webView: WKWebView) {
        webView.evaluateJavaScript("alert('hello from Swift')")
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}
