//
//  MenuViewController.swift
//  NavyApp
//
//  Created by Rafael Amaro on 11/20/20.
//

import UIKit
import SafariServices

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //title = "Menu"
    }
    
    @IBAction func web(){
        let vc = SFSafariViewController(url: URL(string:"https://www.navy.com")!)
        present(vc, animated: true)
    }

}
