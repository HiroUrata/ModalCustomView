//
//  ViewController.swift
//  ModalCustomView
//
//  Created by UrataHiroki on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       let showModalViewButton = UIButton()
        showModalViewButton.frame = CGRect(x: view.frame.maxX / 4, y: 100, width: view.frame.width / 2, height: 40)
        showModalViewButton.backgroundColor = .systemGreen
        showModalViewButton.setTitle("showModalView", for: .normal)
        showModalViewButton.titleLabel?.textColor = .black
        showModalViewButton.addTarget(self, action: #selector(showView), for: .touchDown)
        view.addSubview(showModalViewButton)
    }
    
    @objc func showView(){
        
        let modalVC = ModalViewController()
        modalVC.modalPresentationStyle = .custom
        self.present(modalVC, animated: true, completion: nil)
    }

    @objc func dismissController(){
        
        dismiss(animated: true, completion: nil)
    }

}

