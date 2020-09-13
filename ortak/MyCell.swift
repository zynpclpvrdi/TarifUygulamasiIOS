//
//  MyCell.swift
//  Tariflerim
//
//  Created by Ali Furkan on 9.05.2019.
//  Copyright © 2019 Ali Furkan. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var imgResim: UIImageView!
    @IBOutlet weak var lblYemekAdi: UILabel!
    @IBOutlet weak var lblFiyat: UILabel!
    @IBOutlet weak var lblTarif: UITextView!
        override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func fillForm(yemekAdi: String, dic:NSDictionary){
        lblYemekAdi.text = yemekAdi
        lblFiyat.text = dic.object(forKey: "Fiyat") as? String
        lblTarif.text = dic.object(forKey: "Tarif") as? String
        if let resim = dic.object(forKey: "Gorsel") as? String{
            imgResim.image = UIImage(named: resim)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
