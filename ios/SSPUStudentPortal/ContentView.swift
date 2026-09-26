import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true
        webView.configuration.websiteDataStore = .default()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        WebView(
            url: URL(string: "https://dracademy.org.in/webapp/login.php")!
        )
        .ignoresSafeArea()
    }
}
