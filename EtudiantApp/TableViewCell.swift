//
//  TableViewCell.swift
//  EtudiantApp
//
//  Created by Boubeh on 5/12/20.
//  Copyright © 2020 Boubeh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var laImage: UIImageView!
    @IBOutlet weak var laName: UILabel!
    @IBOutlet weak var laPhone: UILabel!
    @IBOutlet weak var laModule: UILabel!
    @IBOutlet weak var laEmail: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
