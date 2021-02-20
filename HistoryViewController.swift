//
//  HistoryViewController.swift
//  NavyApp
//
//  Created by Rafael Amaro on 12/4/20.
//
import UIKit
import Foundation
import WebKit

class HistoryViewController: UIViewController {
    @IBOutlet weak var webView1: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let my_url = URL(string: "https://www.history.navy.mil/our-collections/photography/us-navy-ships/battleships.html/")
        let my_request = URLRequest(url: my_url!)
        webView1.load(my_request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated.
    }
    
    
    
    
    
}

