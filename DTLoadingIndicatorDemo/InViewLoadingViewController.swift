//
//  InViewLoadingViewController.swift
//  DTLoadingIndicator
//
//  Created by Daron Tancharoen on 7/26/16.
//
//

import UIKit

class InViewLoadingViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        startLoading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.stopLoading()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func startLoading() {
        label.text = "This part of screen is loading"
        DTLoadingIndicator.startGiftLoadingIndicatorInView(self.contentView, top: 30)
    }
    
    func stopLoading() {
        label.text = "This part of screen is loaded"
        DTLoadingIndicator.stopLoadingIndicatorInView(self.contentView)
    }
}
