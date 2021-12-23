//
//  ViewController.swift
//  TicTacToe
//
//  Created by Adrian Lindell on 12/22/21.
//

import UIKit

class GameViewController: UIViewController {
    // variables
    var isXTurn = true
    var gameOver = false
    var winner = "none"
    var isGridTaken = Array(repeating: false, count: 9)
    
    @IBOutlet weak var displayWinnerLabel: UILabel!
    @IBOutlet weak var playerWinnerLabel: UILabel!
    @IBOutlet weak var drawLabel: UILabel!
    
    @IBOutlet weak var currentPlayerLabel: UILabel!
    
    
    // game grid buttons
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!

    @IBAction func resetButton(_ sender: Any) {
        // reset button labels
        button0.setTitle("", for: .normal)
        button1.setTitle("", for: .normal)
        button2.setTitle("", for: .normal)
        button3.setTitle("", for: .normal)
        button4.setTitle("", for: .normal)
        button5.setTitle("", for: .normal)
        button6.setTitle("", for: .normal)
        button7.setTitle("", for: .normal)
        button8.setTitle("", for: .normal)
        
        // reset game variables
        isXTurn = true
        gameOver = false
        winner = "none"
        isGridTaken = Array(repeating: false, count: 9)
        
        playerWinnerLabel.text = "error"
        
        // hide winner labels
        displayWinnerLabel.isHidden = true
        playerWinnerLabel.isHidden = true
        
        // hide draw label
        drawLabel.isHidden = true
        
        updateCurrentPlayer()
    }
    
    
    
    func showWinner() {
        if (gameOver) {
            displayWinnerLabel.isHidden = false
            playerWinnerLabel.text = winner
            playerWinnerLabel.isHidden = false
        } else {
            print("error")
        }
    }
    
    func updateCurrentPlayer() {
        if (isXTurn) {
            currentPlayerLabel.text = "X"
        } else {
            currentPlayerLabel.text = "O"
        }
    }
    
    
    // game grid actions
    @IBAction func click0(_ sender: UIButton) {
        // take turn
        if (!gameOver && !isGridTaken[0]) {
            if (isXTurn) {
                button0.setTitle("X", for: .normal)
            } else {
                button0.setTitle("O", for: .normal)
            }
            
            isGridTaken[0] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click1(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[1]) {
            if (isXTurn) {
                button1.setTitle("X", for: .normal)
            } else {
                button1.setTitle("O", for: .normal)
            }
            
            isGridTaken[1] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click2(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[2]) {
            if (isXTurn) {
                button2.setTitle("X", for: .normal)
            } else {
                button2.setTitle("O", for: .normal)
            }
            
            isGridTaken[2] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    
    @IBAction func click3(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[3]) {
            if (isXTurn) {
                button3.setTitle("X", for: .normal)
            } else {
                button3.setTitle("O", for: .normal)
            }
            
            isGridTaken[3] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click4(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[4]) {
            if (isXTurn) {
                button4.setTitle("X", for: .normal)
            } else {
                button4.setTitle("O", for: .normal)
            }
            
            isGridTaken[4] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click5(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[5]) {
            if (isXTurn) {
                button5.setTitle("X", for: .normal)
            } else {
                button5.setTitle("O", for: .normal)
            }
            
            isGridTaken[5] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    
    @IBAction func click6(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[6]) {
            if (isXTurn) {
                button6.setTitle("X", for: .normal)
            } else {
                button6.setTitle("O", for: .normal)
            }
            
            isGridTaken[6] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click7(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[7]) {
            if (isXTurn) {
                button7.setTitle("X", for: .normal)
            } else {
                button7.setTitle("O", for: .normal)
            }
            
            isGridTaken[7] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    @IBAction func click8(_ sender: Any) {
        // take turn
        if (!gameOver && !isGridTaken[8]) {
            if (isXTurn) {
                button8.setTitle("X", for: .normal)
            } else {
                button8.setTitle("O", for: .normal)
            }
            
            isGridTaken[8] = true
            
            // check winner
            if (isWinner()) {
                gameOver = true
                showWinner()
            }
            
            // next turn
            isXTurn = !isXTurn
            updateCurrentPlayer()
        }
    }
    
    func isSame(str1: String, str2: String, str3: String) -> Bool {
        // check for unfilled spaces
        if (str1 == "" || str2 == "" || str3 == "") {
            return false
        }
        if (str1 == str2 && str2 == str3) {
            winner = str1
            return true
        } else {
            return false
        }
    }
    
    func isWinner() -> Bool {
        if (isSame(str1: button0.currentTitle ?? "", str2: button1.currentTitle ?? "", str3: button2.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button3.currentTitle ?? "", str2: button4.currentTitle ?? "", str3: button5.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button6.currentTitle ?? "", str2: button7.currentTitle ?? "", str3: button8.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button0.currentTitle ?? "", str2: button3.currentTitle ?? "", str3: button6.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button1.currentTitle ?? "", str2: button4.currentTitle ?? "", str3: button7.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button2.currentTitle ?? "", str2: button5.currentTitle ?? "", str3: button8.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button0.currentTitle ?? "", str2: button4.currentTitle ?? "", str3: button8.currentTitle ?? "")) {
            return true
        }
        else if (isSame(str1: button2.currentTitle ?? "", str2: button4.currentTitle ?? "", str3: button6.currentTitle ?? "")) {
            return true
        } else if (isDraw()) {
            showDraw()
            
            return false
        } else {
            return false
        }
    }
    
    func isDraw() -> Bool {
        for val in isGridTaken {
            if (val == false) {
                return false
            }
        }
        
        return true
    }
    
    func showDraw() {
        drawLabel.isHidden = false
        gameOver = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

