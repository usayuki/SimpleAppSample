//
//  FirstViewController.swift
//  SimpleAppSample
//
//  Created by usayuki on 2022/10/29.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "First ViewController"
        view.backgroundColor = .systemBackground

        // Create instance
        let button = UIButton()
        view.addSubview(button)

        // Setting
        button.setTitle("Next Page", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.addTarget(self, action: #selector(goToNextPage(_ :)), for: .touchUpInside)

        // Constlaynt
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc private func goToNextPage(_ sender: UIButton) {
        let secontViewController = SecondViewController()
        navigationController?.pushViewController(secontViewController, animated: true)
    }
}
