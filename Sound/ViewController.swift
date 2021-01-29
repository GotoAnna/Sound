//
//  ViewController.swift
//  Sound
//
//  Created by Mac on 2021/01/29.
//

import UIKit
import AVFoundation //音声・動画などを取り込む

class ViewController: UIViewController {

    //@IBOutlet：パーツとコードを連結
    //ドラムを表示する変数をつくる
    @IBOutlet var drumButton: UIButton!
    //ピアノを表示する変数をつくる
    @IBOutlet var pianoButton: UIButton!
    //ギターを表示する変数をつくる
    @IBOutlet var guitarButton: UIButton!
    
    //drumSoundファイルを読み込み, プレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    //pianoSoundファイルを読み込み, プレイヤーを作る
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    //guitarSoundファイルを読み込み, プレイヤーを作る
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //@IBAction：アクションと実装を連結
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

    
    //ピアノがタップされた時に呼ばれる
    @IBAction func touchDownPianoButton(){
        //ピアノがなっている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        //ピアノの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        //ピアノの音を再生する
        pianoSoundPlayer.play()
    }
    @IBAction func touchUpPianoButton(){ //指が離れた時に動作
        //ピアノがなっていない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    
    //ギターがタップされた時に呼ばれる
    @IBAction func touchDowngiGuitarButton(){
        //ギターがなっている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        //ギターの音を再生する
        guitarSoundPlayer.play()
    }
    @IBAction func touchUpguitarButton(){ //指が離れた時に動作
        //ギターがなっていない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}

