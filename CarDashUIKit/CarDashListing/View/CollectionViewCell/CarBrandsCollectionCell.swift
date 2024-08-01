//
//  CarBrandsCollectionCell.swift
//  CarDashUIKit
//
//  Created by Neosoft on 01/08/24.
//

import UIKit

class CarBrandsCollectionCell: UICollectionViewCell {

    @IBOutlet weak var brandImage: UIImageView!
    
    var strImage: String?  {
        didSet {
            setupCell()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    
    private func setupCell() {
        brandImage.image = UIImage(named:  strImage ?? "Scorpio")
    }
}
