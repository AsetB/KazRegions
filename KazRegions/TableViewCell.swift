//
//  TableViewCell.swift
//  KazRegions
//
//  Created by Aset Bakirov on 20.10.2023.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var emblem: UIImageView!
    @IBOutlet weak var mainCity: UILabel!
    @IBOutlet weak var population: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(region: RegionStruct) {
        name.text = region.name
        mainCity.text = region.mainCity
        population.text = region.population
        
        photo.sd_setImage(with: URL(string: region.photo), completed: nil)
        
        emblem.sd_setImage(with: URL(string: region.emblem), completed: nil)
    }

}
