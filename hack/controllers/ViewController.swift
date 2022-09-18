//
//  ViewController.swift
//  hack
//
//  Created by Daniyal Ganiuly on 17.09.2022.
//

import UIKit
import WebKit



class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
   
    @IBOutlet weak var CustomView: UIView!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()

    let url = URL(string: "http://localhost:3000/")
    let request = URLRequest(url: url!)
    let webView = WKWebView(frame: self.CustomView.frame)
    webView.autoresizingMask = [.flexibleWidth, .flexibleHeight] 
    webView.navigationDelegate = self
    
    webView.load(request)
    self.CustomView.addSubview(webView)
    
    }

}

