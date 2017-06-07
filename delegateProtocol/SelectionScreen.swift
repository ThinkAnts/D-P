//
//  SelectionScreen.swift
//  delegateProtocol
//
//  Created by Ravi on 07/06/17.
//  Copyright © 2017 ThinkAnts. All rights reserved.
//

import Foundation
import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDeleagte: SideSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func goldButtonTapped(_ sender: UIButton) {
        selectionDeleagte?.didTapChoice(image: UIImage(named: "Image1")!, name: "Gold", color: .red)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func avicciButtonTapped(_ sender: UIButton) {
        selectionDeleagte?.didTapChoice(image: UIImage(named: "image2")!, name: "Avicii", color: .black)
        dismiss(animated: true, completion: nil)
    }

}
