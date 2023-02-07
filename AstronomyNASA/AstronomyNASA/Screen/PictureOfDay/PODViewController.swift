//
//  PODViewController.swift
//  AstronomyNASA
//
//  Created by Shashank Mishra on 07/02/23.
//

import UIKit

class PODViewController: UIViewController {

    var viewModel: PODViewModel?

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Observer for getting pod object update
        viewModel?.pod.bind({ val in
            debugPrint(val)
        })
        
        viewModel?.getPictureOfDay()
    }
}


