//
//  ViewController.swift
//  LineLoginTest
//
//  Created by tony on 2017/6/1.
//  Copyright © 2017年 tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController,LineSDKLoginDelegate {

    @IBAction func at(_ sender: Any) {
        LineSDKLogin.sharedInstance().start()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LineSDKLogin.sharedInstance().delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func didLogin(_ login: LineSDKLogin, credential: LineSDKCredential?, profile: LineSDKProfile?, error: Error?) {
        if let e = error{
            print(e)
        }else{
            print(profile?.userID ?? "")
            print(profile?.displayName ?? "")
            print(profile?.statusMessage ?? "")
        }
    }

}

