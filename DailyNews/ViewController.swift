//
//  ViewController.swift
//  DailyNews
//
//  Created by Chris De Leon on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "News"
        view.backgroundColor = .systemBackground
        
        APICaller.shared.getTopStories { result in
            switch result {
            case .success(let response):
                break
            case .failure(let error):
                print(error)
            }
            
        }
        
    }


}

