//
//  ViewController.swift
//  XLXPushPopComplete
//
//  Created by charles on 2017/7/26.
//  Copyright © 2017年 charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
    }
    
    @IBAction func pushAction() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController")
        navigationController?.pushViewController(vc, animated: true, complete: {
            print("push complete")
        })
    }
    
    @IBAction func popAction() {
        if navigationController?.childViewControllers.count == 1 {
            return
        }
        
        _ = navigationController?.popViewController(animated: true, complete: {
            print("pop complete")
        })
    }
}

