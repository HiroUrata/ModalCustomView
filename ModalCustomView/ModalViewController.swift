//
//  ModalViewController.swift
//  ModalCustomView
//
//  Created by UrataHiroki on 2021/11/02.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewDismiss))
        view.addGestureRecognizer(tapGestureRecognizer)

    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.frame.origin.y = UIScreen.main.bounds.maxY / 2
        view.frame.size.height = UIScreen.main.bounds.height / 2
        view.layer.cornerRadius = 20.0
        view.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    
    @objc func viewDismiss() {
        
        dismiss(animated: true, completion: nil)
    }

}
