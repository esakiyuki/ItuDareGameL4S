//
//  ViewController.swift
//  ItuDareGameL4S
//
//  Created by esaki yuki on 2020/09/06.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //数字の場合ははvar numberarray:[Int] = [0,0,0,0,0]
    //配列の要素の最初の要素番号は0
    //配列名.append("追加する要素名")で要素を追加できる
    let array1: [String] = ["一年前", "一週間", "昨日", "今日"]
    let array2: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let array3: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let array4: [String] = ["叫んだ", "演説した", "怒った", "帰った"]
    
    var index: Int = 0
    
    @IBAction func change() {
        //それぞれのlabelに配列の要素を追加
        label1.text = array1[index]
        label2.text = array2[index]
        label3.text = array3[index]
        label4.text = array4[index]
        
        //最初に代入されている0が、ボタンを押すたびにindexの値が1上がって、labelに配列の次の要素が表示されるようになる
        index = index + 1
        
        //3まででいったら0
        if index > 3 {
            index = 0
        }
        
    }
    
    @IBAction func random() {
        
        //乱数を発生させる
        let Index1 = Int.random(in: 0...3)
        let Index2 = Int.random(in: 0...3)
        let Index3 = Int.random(in: 0...3)
        let Index4 = Int.random(in: 0...3)
        
        //コンソールに出力して確認
        print("いつ: \(Index1)")
        print("どこで: \(Index2)")
        print("だれが: \(Index3)")
        print("どうした: \(Index4)")
        
        label1.text = array1[Index1]
        label2.text = array2[Index2]
        label3.text = array3[Index3]
        label4.text = array4[Index4]
    }
    
    @IBAction func reset() {
        label1.text = "・・・"
        label2.text = "・・・"
        label3.text = "・・・"
        label4.text = "・・・"
        
        index = 0
    }


}

