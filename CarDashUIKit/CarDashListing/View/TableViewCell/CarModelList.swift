//
//  CarModelList.swift
//  CarDashUIKit
//
//  Created by Neosoft on 01/08/24.
//

import UIKit

class CarModelList: UITableViewCell {

    //MARK: - @IBOutlet & Variables

    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cellBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setData(car: Car) {
        cellBackground.setCorner(radius: SizeConstants.radius, borderWidth: SizeConstants.borderWidth, borderColor: .lightText)
        carName.text = car.name ?? ""
        priceLabel.text = StringConstants.rs + (car.price ?? "")
        carImage.image = UIImage(named: car.imageUrl ?? "")
    }
}
