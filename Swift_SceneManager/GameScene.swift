//
//  GamaScene.swift
//  Swift_SceneManager
//
//  Created by 鈴木公章 on 2015/03/29.
//  Copyright (c) 2015年 suzuki. All rights reserved.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    
    var changeSceneDelegate: ChangeSceneProtocol!
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.yellowColor()
        
        println("GameScene")
        
        let label = SKLabelNode()
        label.text = "Game Scene"
        label.fontSize = 50
        label.fontColor = UIColor.blackColor()
        label.position = CGPoint(x: self.frame.width/2.0, y: self.size.height/2.0)
        self.addChild(label)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        changeSceneDelegate.changeScene(self)
    }
}
