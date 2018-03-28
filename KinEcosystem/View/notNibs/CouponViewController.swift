//
//  CouponViewController.swift
//  KinEcosystem
//
//  Created by Elazar Yifrach on 28/03/2018.
//  Copyright © 2018 Kik Interactive. All rights reserved.
//

import UIKit

class CouponViewController: UIViewController {

    var viewModel: CouponViewModel!
    @IBOutlet weak var couponImageView: UIImageView!
    @IBOutlet weak var couponTitle: UILabel!
    @IBOutlet weak var couponDescription: UILabel!
    @IBOutlet weak var couponCode: UILabel!
    @IBOutlet weak var copyCodeButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.image.then(on: .main) { [weak self] result in
            self?.couponImageView.image = result.image
        }
        couponTitle.attributedText = viewModel.title
        couponDescription.attributedText = viewModel.description
        copyCodeButton.setAttributedTitle(viewModel.buttonLabel, for: .normal)
        copyCodeButton.backgroundColor = .kinDeepSkyBlue
        copyCodeButton.adjustsImageWhenDisabled = false
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        let transition = SpendTransition()
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = transition
        self.dismiss(animated: true)
    }
    
    @IBAction func copyCodeButtonTapped(_ sender: Any) {
        
    }
    

}
