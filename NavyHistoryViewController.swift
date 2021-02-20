//
//  NavyHistoryViewController.swift
//  NavyApp
//
//  Created by Rafael Amaro on 12/4/20.
//
import UIKit
import Foundation
import WebKit

class NavyHistoryViewController: UIViewController {

    @IBOutlet weak var webView2: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let my_url = URL(string: "https://www.history.navy.mil/")
        let my_request = URLRequest(url: my_url!)
        webView2.load(my_request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated.
    }
    
    
    







}
