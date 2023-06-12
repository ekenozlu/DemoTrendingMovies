//
//  MainMovieCell.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {

    public static var identifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "MainMovieCell", bundle: nil)
    }
    
    //IBOutlets:
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBorder(color: .label, width: 1)
        backView.roundedCorner(8)
        backView.backgroundColor = .lightGray
        movieImageView.roundedCorner(8)
    }
    
    func setupCell(viewModel: MovieCellViewModel) {
        self.movieImageView.sd_setImage(with: viewModel.imageURL)
        self.movieTitleLabel.text   = viewModel.title
        self.movieRatingLabel.text  = viewModel.rating
        self.movieDateLabel.text    = viewModel.date
    }
    
}
