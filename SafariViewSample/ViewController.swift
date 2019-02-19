//
//  ViewController.swift
//  SafariViewSample
//
//  Created by Ryusei Wada on 2019/02/19.
//  Copyright © 2019 Ryusei Wada. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    @IBOutlet var searchWordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openSafari(){
        let searchWord: String = searchWordTextField.text!
        let url: String = "https://google.com/search?q=" + searchWord
        let encUrl = NSURL(string: url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        let safariViewController: SFSafariViewController = SFSafariViewController(url: encUrl! as URL)
        present(safariViewController, animated: true, completion: nil)
        print(encUrl!)
    }

}

