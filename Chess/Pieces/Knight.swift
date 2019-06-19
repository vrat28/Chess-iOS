//
//  Knight.swift
//  Chess
//
//  Created by Varun Rathi on 01/06/19.
//  Copyright © 2019 Varun Rathi. All rights reserved.
//

import UIKit

class Knight:UIChessPiece {

 init(frame:CGRect, color:UIColor, vc:ChessViewController,pieceColor:PieceColor = .White) {
        super.init(frame: frame)
    
        if (pieceColor ==  PieceColor.Black){
                self.text = "♞"
        }else
        {
                self.text = "♘"
        }
    
        self.symbol = pieceColor
        self.isOpaque = false
        self.textColor = color
        self.isUserInteractionEnabled = true
        self.textAlignment = . center
        self.font = self.font.withSize(36)
    
        vc.chessPieces.append(self)
        vc.view.addSubview(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }


    override func isMovePossible(from source:BoardIndex, destinationIndex:BoardIndex)->Bool {
        return true
    }

}
