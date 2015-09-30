//: Playground - noun: a place where people can play

import UIKit

class ViewController: UIViewController {
    
    var grid = [[0,0,0],[0,0,0],[0,0,0]]

    var isPlayer1Turn = true

    var player1Score = 0
    var player2Score = 0
    var stalemateScore = 0
    
    let gameStatusLabel = UILabel(frame: CGRect(x: 0, y: 100, width: 200, height: 50))
    
    let gameScoreLabel = UILabel(frame: CGRect(x: 0, y: 50, width: 200, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        
        gameStatusLabel.text = "Player 1 Turn"
        gameStatusLabel.textAlignment = .Center
        
        
        gameStatusLabel.center.x = view.center.x
        
        view.addSubview(gameStatusLabel)
        
        view.backgroundColor = UIColor.whiteColor()
        
        
        gameScoreLabel.text = "Score"
        gameScoreLabel.textAlignment = .Center
        
        
        gameScoreLabel.center.x = view.center.x //WHERE TO PUT THE BUTTON
        
        view.addSubview(gameScoreLabel)
        
        let screenHeight = Int(UIScreen.mainScreen().bounds.height)
        let screenWidth = Int(UIScreen.mainScreen().bounds.width)
        
        let buttonHW = 100
        let buttonSpacing = 4
        
        let gridHW = (buttonHW * 3) + (buttonSpacing * 2)
        
        let leftspacing = (screenWidth - gridHW) / 2
        let topSpacing = (screenHeight - gridHW) / 2
        
        for (r,row) in grid.enumerate() {
            
            
            for (c,_) in row.enumerate() {
            
            let x = c * (buttonHW + buttonSpacing) + leftspacing
            let y = r * (buttonHW + buttonSpacing) + topSpacing
            
            let button1 = TTTButton(frame: CGRect(x: x, y: y, width: 100, height: 100))
            button1.backgroundColor = UIColor.cyanColor()
            
            button1.row = r
                button1.col = c
                
            button1.addTarget(self, action: "spacePressed:", forControlEvents:.TouchUpInside)
                view.addSubview(button1)
            }
        }
    }
            
    func spacePressed(button:TTTButton) {
        
        if button.player == 0 {
        }

        button.player = isPlayer1Turn ? 1 : 2
        
        grid[button.row][button.col] = isPlayer1Turn ? 1 : 2
        

            
        isPlayer1Turn = !isPlayer1Turn
        }
    
    
    
    func checkForWinner() {
        
        let possibilities = [((0,0),(0,1),(0,2))]
    }
    for possibility in possibilities {
    
        let (p1,p2,p3) = possibility
    
        let value1 = grid[p1.0][p1.1]
        let value2 = grid[p2.0][p2.1]
        let value3 = grid[p3.0][p3.1]
    
        if value1 == value2 && value2 == value3 {
    
    if value1 != 0 {
    

        print("Player \(value1)")
    
    }else{
    
        print("all zeros")
    
    }
    
    
    }else{
        print("does not match")
    
    }
    
    }
    
    }
    
}




class TTTButton: UIButton {
    
        var row = 0
        var col = 0
    
        var player = 0 {
            
            didSet {
                
                switch player {
                    
                case 1 : backgroundColor = UIColor.magentaColor()
                case 2 : backgroundColor = UIColor.yellowColor()
                default : backgroundColor = UIColor.cyanColor()
                    
}
