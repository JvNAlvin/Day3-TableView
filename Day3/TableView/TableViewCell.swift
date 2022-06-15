//
//  TableViewCell.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var txtAuthor: UILabel!
    @IBOutlet weak var txtYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
