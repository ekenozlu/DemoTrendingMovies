//
//  DetailsViewController.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit
import SDWebImage

class DetailsViewController: UIViewController {

    //IBOutlets:
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //ViewModel:
    var viewModel: DetailsViewModel
    init(viewModel: DetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        self.title = "Movie Details"
        imageView.sd_setImage(with: viewModel.movieImage)
        titleLabel.text = viewModel.movieTitle
        descriptionLabel.text = viewModel.movieDescription
    }

}
