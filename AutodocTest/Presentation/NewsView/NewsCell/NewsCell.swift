//
//  NewsCell.swift
//  AutodocTest
//
//  Created by Михаил Серёгин on 21.08.2022.
//

import UIKit

class NewsCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        loadingIndicator.startAnimating()
    }

}
