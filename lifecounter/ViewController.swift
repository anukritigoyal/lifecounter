//
//  ViewController.swift
//  lifecounter
//
//  Created by Anukriti Goyal on 29/1/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var points = [20, 20, 20, 20]
    
    @IBOutlet weak var outcome: UILabel!
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var playerTwoScore: UILabel!
    @IBOutlet weak var playerThreeScore: UILabel!
    @IBOutlet weak var playerFourScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func one_subFive(_ sender: UIButton) {
        playerOneScore.text = update(playerOneScore.text, -5, "1")
    }
    @IBAction func one_subOne(_ sender: UIButton) {
        playerOneScore.text = update(playerOneScore.text, -1, "1")
    }
    @IBAction func one_addOne(_ sender: UIButton) {
        playerOneScore.text = update(playerOneScore.text, 1, "1")
    }
    @IBAction func one_addFive(_ sender: UIButton) {
        playerOneScore.text = update(playerOneScore.text, 5, "1")
    }
    
    @IBAction func two_subFive(_ sender: UIButton) {
        playerTwoScore.text = update(playerTwoScore.text, -5, "2")
    }
    @IBAction func two_subOne(_ sender: UIButton) {
        playerTwoScore.text = update(playerTwoScore.text, -1, "2")
    }
    @IBAction func two_addOne(_ sender: UIButton) {
        playerTwoScore.text = update(playerTwoScore.text, 1, "2")
    }
    
    @IBAction func two_addFive(_ sender: UIButton) {
        playerTwoScore.text = update(playerTwoScore.text, 5, "2")
    }
    
    
    @IBAction func three_subFive(_ sender: UIButton) {
        playerThreeScore.text = update(playerThreeScore.text, -5, "3")
    }
    @IBAction func three_subOne(_ sender: UIButton) {
        playerThreeScore.text = update(playerThreeScore.text, -1, "3")
    }
    @IBAction func three_addOne(_ sender: UIButton) {
        playerThreeScore.text = update(playerThreeScore.text, 1, "3")
    }
    @IBAction func three_addFive(_ sender: UIButton) {
        playerThreeScore.text = update(playerThreeScore.text, 5, "3")
    }
    
    
    @IBAction func four_subFive(_ sender: UIButton) {
        playerFourScore.text = update(playerFourScore.text, -5, "4")
    }
    @IBAction func four_subOne(_ sender: UIButton) {
        playerFourScore.text = update(playerFourScore.text, -1, "4")
    }
    @IBAction func four_addOne(_ sender: UIButton) {
        playerFourScore.text = update(playerFourScore.text, 1, "4")
    }
    @IBAction func four_addFive(_ sender: UIButton) {
        playerFourScore.text = update(playerFourScore.text, 5, "4")
    }
    
    func update(_ oldScore: String?, _ update: Int, _ player: String) -> String {
        let currScore : String = oldScore ?? "0"
        let newScore = Int(currScore)! + update
        if newScore <= 0 {
            outcome.text = "Player " + player + " lost."

        }
        return String(newScore)
    }


}

