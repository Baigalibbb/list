//
//  TableViewCell.swift
//  WorldWonders
//
//  Created by Tenizbayev Bolat on 05.01.2024.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var flag: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(wonder: WorldWonders){
        
        nameLabel.text = wonder.name
        regionLabel.text = wonder.region
        locationLabel.text = wonder.location
        
        picture.sd_setImage(with: URL(string: wonder.picture0), completed: nil)
        flag.sd_setImage(with: URL(string: wonder.picture0), completed: nil)
    }

}
