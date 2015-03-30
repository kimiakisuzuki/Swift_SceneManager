//
//  SceneManager.swift
//  Swift_SceneManager
//
//  Created by 鈴木公章 on 2015/03/29.
//  Copyright (c) 2015年 suzuki. All rights reserved.
//

import Foundation
import SpriteKit

class SceneManager: NSObject {
    
    //タイトルシーン
    class func titleScene(size: CGSize) -> TitleScene {
        let scene = TitleScene(size: size)
        return scene
    }
    
    //ゲームシーン
    class func gameScene(size: CGSize) -> GameScene {
        let scene = GameScene(size: size)
        return scene
    }
    
    //結果シーン
    class func resultScene(size: CGSize) -> ResultScene {
        let scene = ResultScene(size: size)
        return scene
    }
    
    //シーン切り替え
    class func changeScene(view: SKView, New newScene: SKScene, Duration sec: NSTimeInterval) {
        let transition = SKTransition.fadeWithDuration(sec)
        view.presentScene(newScene, transition: transition)
    }
}
