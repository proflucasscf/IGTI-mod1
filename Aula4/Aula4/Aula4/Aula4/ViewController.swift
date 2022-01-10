//
//  ViewController.swift
//  Aula4
//
//  Created by Lucas Schmidt Correa Franco on 15/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1 - ViewController - viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("2 - ViewController - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("3 - ViewController - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("4 - ViewController - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("5 - ViewController - viewDidDisappear")
    }
}

