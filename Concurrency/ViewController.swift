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
        
        let group = DispatchGroup()
        
        let queue_1 = DispatchQueue(label: "first")
        queue_1.async(group: group) {
            sleep(6)
            print("First queue exicuted")
        }
        
        let queue_2 = DispatchQueue(label: "second")
        queue_2.async(group: group) {
            sleep(4)
            print("Second queue exicuted")
        }
        
        group.notify(queue: DispatchQueue.main) {
            print("All Queue Exicuted")
            self.view.backgroundColor = .purple
        }
        
    }

    @IBAction func greenButtonPressed(_ sender: UIButton) {
        
//        let queue = DispatchQueue(label: "downloadimage")
//        queue.async {
//            sleep(5)
//            DispatchQueue.main.async {
//                self.view.backgroundColor = sender.backgroundColor
//            }
//        }

        self.view.backgroundColor = sender.backgroundColor
        
    }

    @IBAction func redButtonPressed(_ sender: UIButton) {
        view.backgroundColor = sender.backgroundColor
    }
}

