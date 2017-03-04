//
//  ViewController.swift
//  OpenPDF
//
//  Created by BriefOS on 3/3/2560 BE.
//  Copyright © 2560 BriefOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let pdfTitle = "Swift Language"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openPDFAction(_ sender: Any) {
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf") {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdfTitle
            self.navigationController?.pushViewController(pdfVC, animated: true)
            
            
        }
        
    }

}

