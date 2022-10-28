//
//  ViewController.swift
//  Concurrency
//
//  Created by Junaed Muhammad Chowdhury on 28/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let queue_1 = DispatchQueue(label: "first")
        queue_1.sync {
            sleep(4)
            print("First queue exicuted")
        }
        
        let queue_2 = DispatchQueue(label: "second")
        queue_2.sync {
            sleep(4)
            print("Second queue exicuted")
        }
        
        print("All Queue Exicuted")
    }

    @IBAction func greenButtonPressed(_ sender: UIButton) {
        
//        let queue = DispatchQueue(label: "downloadimage")
//        queue.async {
//            sleep(5)
//            DispatchQueue.main.async {
//                self.view.backgroundColor = sender.backgroundColor
//            }
//        }


    }

    @IBAction func redButtonPressed(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
    }
}

