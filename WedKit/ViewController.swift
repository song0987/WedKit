//
//  ViewController.swift
//  WedKit
//
//  Created by tita song on 2023/9/30.
//

import UIKit

class ViewController: UIViewController{
    
    private let button:UIButton = {
        let button = UIButton()
        button.setTitle("Song Art", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 220,height: 50)
        button.center = view.center
        
        
    }
    @objc private func didTapButton() {
        guard let url = URL(string:"https://song.gallery") else {
            return
        }
        let vc = WebViewController(url: url, title: "Art")
        let navVC = UINavigationController(rootViewController: vc)
        present(navVC,animated: true)
    }
}
