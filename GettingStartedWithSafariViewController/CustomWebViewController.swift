//
//  CustomWebViewController.swift
//  GettingStartedWithSafariViewController
//
//  Created by Jordan Morgan on 6/25/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit
import WebKit

class CustomWebViewController: UIViewController
{
    var webView:UIWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        webView = UIWebView(frame: self.view.frame)
        let url = NSURL(string: "http://google.com")!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
        self.view.addSubview(webView)
    }

    //Closes the browser and dismisses this view controller.
    @IBAction func close(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
