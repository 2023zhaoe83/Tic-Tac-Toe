//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Emily on 7/28/20.
//  Copyright © 2020 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var gridLabel0: GridLabel!
    @IBOutlet weak var gridLabel1: GridLabel!
    @IBOutlet weak var gridLabel2: GridLabel!
    @IBOutlet weak var gridLabel3: GridLabel!
    @IBOutlet weak var gridLabel4: GridLabel!
    @IBOutlet weak var gridLabel5: GridLabel!
    @IBOutlet weak var gridLabel6: GridLabel!
    @IBOutlet weak var gridLabel7: GridLabel!
    @IBOutlet weak var gridLabel8: GridLabel!
    var labels = [GridLabel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        labels.append(gridLabel0)
        labels.append(gridLabel1)
        labels.append(gridLabel2)
        labels.append(gridLabel3)
        labels.append(gridLabel4)
        labels.append(gridLabel5)
        labels.append(gridLabel6)
        labels.append(gridLabel7)
        labels.append(gridLabel8)
        
    }

    @IBAction func onTappedGridLabel(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: backgroundView)
        for label in labels {
            if label.frame.contains(selectedPoint) {
                label.text = "X"
            }
        }
        print("tapped something")
    }
    
}

