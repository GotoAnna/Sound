//
//  ViewController.swift
//  Sound
//
//  Created by Mac on 2021/01/29.
//

import UIKit
import AVFoundation //音声・動画などを取り込む

class ViewController: UIViewController {

    //ドラムを表示する変数をつくる
    @IBOutlet var drumButton: UIButton!
    
    //drumSoundファイルを読み込み, プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //ドラムがタップされた時に呼ばれる
    @IBAction func touchDouwnDrumButton(){ //指が触れた時に動作
        //ドラムがなっている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    
    @IBAction func touchUpDrumButton(){ //指が離れた時に動作
        //ドラムがなっていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

}

