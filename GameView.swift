//
//  GamaView.swift
//  Swift_SceneManager
//
//  Created by 鈴木公章 on 2015/03/29.
//  Copyright (c) 2015年 suzuki. All rights reserved.
//

import Foundation
import SpriteKit

class GameView: SKView, ChangeSceneProtocol{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpGameView()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpGameView() {
        println("set up")
        switchingTitleScene()
    }
    
    //タイトルシーンへ切り替え
    func switchingTitleScene() {
        let scene = SceneManager.titleScene(self.bounds.size)
        scene.changeSceneDelegate = self
        SceneManager.changeScene(self, New: scene, Duration: 0.5)
    }
    
    //ゲームシーンへ切り替え
    func switchingGamaScene() {
        let scene = SceneManager.gameScene(self.bounds.size)
        scene.changeSceneDelegate = self
        SceneManager.changeScene(self, New: scene, Duration: 0.5)
    }
    
    //結果画面へ移動
    func switchingResultScene() {
        let scene = SceneManager.resultScene(self.bounds.size)
        scene.changeSceneDelegate = self
        SceneManager.changeScene(self, New: scene, Duration: 0.5)
    }
    
    //デリゲートメソッド
    func changeScene(scene: SKScene) {
        if scene.isKindOfClass(TitleScene) {
            switchingGamaScene()
        } else if scene.isKindOfClass(GameScene) {
            switchingResultScene()
        } else if scene.isKindOfClass(ResultScene) {
            switchingTitleScene()
        }
        
    }
}
