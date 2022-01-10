//
//  ViewController2.swift
//  Aula4
//
//  Created by Lucas Schmidt Correa Franco on 15/10/21.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1 - ViewController2 - viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("2 - ViewController2 - viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("3 - ViewController2 - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("4 - ViewController2 - viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("5 - ViewController2 - viewDidDisappear")
    }
}
