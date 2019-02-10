//
//  WebViewController.swift
//  MySearchApp
//
//  Created by 寺島 洋平 on 2019/02/10.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    // 商品ページのURL
    var itemUrl: String?
    
    // 商品ページを参照するためのWebView
    @IBOutlet weak var webView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // WebViewのurlを読み込ませてWebページを表示させる
        guard let itemUrl = itemUrl else {
            return
        }
        
        guard let url = URL(string: itemUrl) else {
            return
        }
        
        let request = URLRequest(url: url)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
