//
//  Informational.swift
//  NavyApp
//
//  Created by Rafael Amaro on 12/4/20.
//
import UIKit
import Foundation
import WebKit

class Informational: UIViewController {

    @IBOutlet weak var webView3: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Video_url = URL(string: "https://www.youtube.com/embed/6Q7fxXKpu1E")
        let Video_request = URLRequest(url: Video_url!)
        webView3.load(Video_request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated.
    }
    
    
    







}
