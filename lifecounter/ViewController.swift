//
//  ViewController.swift
//  lifecounter
//
//  Created by Anukriti Goyal on 29/1/19.
//  Copyright © 2019 Anukriti Goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scores = [20, 20, 20, 20] // append to this if add player
    
    @IBOutlet weak var p1score: UILabel!
    @IBOutlet weak var p2score: UILabel!
    @IBOutlet weak var p3score: UILabel!
    @IBOutlet weak var p4score: UILabel!
    @IBOutlet weak var p5score: UILabel!
    @IBOutlet weak var p6score: UILabel!
    @IBOutlet weak var p7score: UILabel!
    @IBOutlet weak var p8score: UILabel!
    
    @IBOutlet var scoreInput: [UITextField]!
    @IBOutlet var playerView: [UIView]!
    
    @IBOutlet weak var outcome: UILabel!
    
    var begin = false
    var end = false
    var currPlayers = 4
    var hist = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in playerView[4...7] {
            x.isHidden = true
        }
    }
    
    @IBAction func goToHist(_ sender: Any) {
        performSegue(withIdentifier: "history", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as! HistoryController
        secondView.histText = hist
    }
    
    @IBAction func p1update(_ sender: UIButton) {
        changeScore(sender, p1score, scoreInput[1].text!, scores[0], 0)
    }
    
    @IBAction func p2update(_ sender: UIButton) {
        changeScore(sender, p2score, scoreInput[2].text!, scores[1], 1)
        print(scoreInput.count)
    }
    
    @IBAction func p3update(_ sender: UIButton) {
        changeScore(sender, p3score, scoreInput[3].text!, scores[2], 2)
    }
    
    @IBAction func p4update(_ sender: UIButton) {
        changeScore(sender, p4score, scoreInput[4].text!, scores[3], 3)
    }
    
    @IBAction func p5update(_ sender: UIButton) {
        changeScore(sender, p5score, scoreInput[5].text!, scores[4], 4)
    }
    
    @IBAction func p6update(_ sender: UIButton) {
        changeScore(sender, p6score, scoreInput[6].text!, scores[5], 5)
    }
    
    @IBAction func p7update(_ sender: UIButton) {
        changeScore(sender, p7score, scoreInput[7].text!, scores[6], 6)
    }
    
    @IBAction func p8update(_ sender: UIButton) {
        changeScore(sender, p8score, scoreInput[8].text!, scores[7], 7)
    }
    
    
    @IBAction func addPlayer(_ sender: Any) {
        if currPlayers < 8 {
            playerView[currPlayers].isHidden = false
            currPlayers = currPlayers + 1
            scores.append(20)
        }
    }
    
    @IBAction func removePlayerr(_ sender: Any) {
        if currPlayers > 1 {
            playerView[currPlayers - 1].isHidden = true
            currPlayers = currPlayers - 1
            scores.removeLast()
        }
    }
    
    func changeScore(_ sender: UIButton, _ labelName: UILabel, _ scoreInput: String, _ currScore: Int, _ playerIndex: Int) {
        begin = true
        
        var newScore: Int
        
        
        if sender.currentTitle == "-1" {
            newScore = currScore - 1;
            hist = hist + "\n" + "Player \(playerIndex + 1) lost 1 point"
//            scores[playerIndex] = newScore
//            labelName.text = String(newScore)
            
        } else if sender.currentTitle == "+1" {
            newScore = currScore + 1;
            hist = hist + "\n" + "Player \(playerIndex + 1) gained 1 point"
//            scores[playerIndex] = newScore
//            labelName.text = String(newScore)

        } else {
            if sender.currentTitle == "-" {
                newScore = currScore - Int(scoreInput)!
                hist = hist + "\n" + "Player \(playerIndex + 1) lost \(Int(scoreInput)!) points"
//                scores[playerIndex] = newScores
//                labelName.text = String(newScore)
               
            } else {
                newScore = currScore + Int(scoreInput)!
                hist = hist + "\n" + "Player \(playerIndex + 1) gained \(Int(scoreInput)!) points"
//                scores[playerIndex] = newScore
//                labelName.text = String(newScore)
                
            }
        }
        
        scores[playerIndex] = newScore
        labelName.text = String(newScore)
        
        if newScore <= 0 {
            outcome.text = "Player \(playerIndex + 1) lost"
            hist = hist + "\n" + "Player \(playerIndex + 1) lost"
        }
    }
}

