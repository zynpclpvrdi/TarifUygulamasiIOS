//
//  ViewController.swift
//  ortak
//
//  Created by 1 on 16.06.2019.
//  Copyright © 2019 1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var yemeklerDic : NSDictionary?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if yemeklerDic != nil{
            return yemeklerDic!.count
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekcell") as! MyCell
        let key = yemeklerDic?.allKeys[indexPath.row] as! String
        cell .fillForm(yemekAdi: key, dic: (yemeklerDic!.object(forKey: key) as! NSDictionary))
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "yemekler", ofType: "plist"){
            yemeklerDic = NSDictionary(contentsOfFile: path)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func kAdi(_ sender: Any) {
    }
    
    
}

