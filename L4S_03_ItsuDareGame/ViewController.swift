//
//  ViewController.swift
//  L4S_03_ItsuDareGame
//
//  Created by 鍋島 由輝 on 2019/02/01.
//  Copyright © 2019 ValJapan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!

    let itsuArray: [String] = ["一年前", "１週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "起こった", "踊った"]


    var index: Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]

//        indexの値を+1する
        index = index + 1

//        indexの値が3より大きくなったら0に戻す
        if index > 3 {
            index = 0
        }

    }

    @IBAction func reset() {
//        それぞれのラベルを元に戻す
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"

//        indexを初期化する
        index = 0

    }

    @IBAction func random() {
//        乱数を生成して、それぞれのindexの中に入れる
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))

//        コンソールに出力して、それぞれの値を確かめよう
        print ("いつ: \(itsuIndex)")
        print ("どこで: \(dokodeIndex)")
        print ("誰が: \(daregaIndex)")
        print ("どうした: \(doshitaIndex)")

//        それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]

    }


}

