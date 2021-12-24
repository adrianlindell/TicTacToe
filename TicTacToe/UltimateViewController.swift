//
//  UltimateViewController.swift
//  TicTacToe
//
//  Created by Adrian Lindell on 12/23/21.
//

import UIKit

class UltimateViewController: UIViewController {
    // variables
    var currentPlayer = 1 // 1 is X, 2 is O
    var gameOver = false
    var winner = "none"
    var isGridTaken = Array(repeating: false, count: 9)
    
    // [grid][cell]
    var state = [
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0],
        [0,0,0,0,0,0,0,0,0]
    ]
    
    @IBOutlet weak var displayWinnerLabel: UILabel!
    @IBOutlet weak var playerWinnerLabel: UILabel!
    @IBOutlet weak var drawLabel: UILabel!
    
    @IBOutlet weak var currentPlayerLabel: UILabel!
    
    
    // game grid buttons
    @IBOutlet weak var button0: GridButton!
    @IBOutlet weak var button1: GridButton!
    @IBOutlet weak var button2: GridButton!
    
    @IBOutlet weak var button3: GridButton!
    @IBOutlet weak var button4: GridButton!
    @IBOutlet weak var button5: GridButton!
    
    @IBOutlet weak var button6: GridButton!
    @IBOutlet weak var button7: GridButton!
    @IBOutlet weak var button8: GridButton!

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
        currentPlayer = 1
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
        if (currentPlayer == 1) {
            currentPlayerLabel.text = "X"
        } else {
            currentPlayerLabel.text = "O"
        }
    }
    
    /*
     // OLD CLICK METHOD
    // game grid actions
    @IBAction func click0(_ sender: UIButton) {
        // take turn
        if (!gameOver && !isGridTaken[0]) {
            if (currentPlayer == 1) {
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
            if (currentPlayer == 1) {
                currentPlayer = 2
            } else {
                currentPlayer = 1
            }
            updateCurrentPlayer()
        }
    }
    */
    
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
    
    func isSmallWinner() -> Bool {
//        for line in lines {
//            if (isSame(str1: state[currentGrid][line[0]], str2: state[currentGrid][line[1]], str3: state[currentGrid][line[2]])) {
//                return true
//            }
//        }
        
        if (isDraw()) {
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
    
    
    
    
    
    
    

    
    let lines = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var playingSquare = -1 // -1 is any square
    
    @IBOutlet weak var winner0Label: UILabel!
    
    @IBAction func cell(_ sender: AnyObject) {
        let currentButton = sender as! GridButton
        
        if (playingSquare == -1 || currentButton.bigGrid == playingSquare) {
            print("click")
            // take turn
            if (!gameOver && !isGridTaken[currentButton.smallGrid!]) {
                if (currentPlayer == 1) {
                    sender.setTitle("X", for: .normal)
                } else {
                    sender.setTitle("O", for: .normal)
                }
                
                isGridTaken[currentButton.smallGrid!] = true
                
                // check winner
                if (isSmallWinner()) {
                    gameOver = true
                    showWinner()
                }
                
                playingSquare = currentButton.smallGrid!
                
                // next turn
                if (currentPlayer == 1) {
                    currentPlayer = 2
                } else {
                    currentPlayer = 1
                }
                updateCurrentPlayer()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let buttonList: [GridButton] = [button0, button1, button2, button3, button4, button5, button6, button7, button8]
        
        for i in 0...8 {
            buttonList[i].bigGrid = i
            for j in 0...8 {
                buttonList[i].smallGrid = j
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
