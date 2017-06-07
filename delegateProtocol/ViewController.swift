//
//  ViewController.swift
//  delegateProtocol
//
//  Created by Ravi on 07/06/17.
//  Copyright © 2017 ThinkAnts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseButton(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "selection") as! SelectionScreen
        selectionVC.selectionDeleagte = self
        present(selectionVC, animated: true, completion: nil)
    }
}

extension ViewController: SideSelectionDelegate {
    
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        nameLabel.text = name
        nameLabel.isHidden = false
        mainImageView.image = image
        self.view.backgroundColor = color
    }
    
}

