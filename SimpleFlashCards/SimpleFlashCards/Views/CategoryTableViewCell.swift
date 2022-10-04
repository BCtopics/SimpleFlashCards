//
//  CategoryTableViewCell.swift
//  SimpleFlashCards
//
//  Created by Bradley GIlmore on 10/3/22.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
