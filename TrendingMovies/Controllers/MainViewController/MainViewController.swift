//
//  MainViewController.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit

class MainViewController: UIViewController {

    //IBOutlets:
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    //Variables:
    var cellDataSource: [MovieCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configView() {
        self.title = "Trending Movies"
        setupTableView()
    }
    
    
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] bool in
            guard let self = self, let bool = bool else {
                return
            }
            DispatchQueue.main.async {
                if bool {
                    self.activityIndicator.startAnimating()
                }
                else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    
    func openDetailsVC(movieID: Int) {
        guard let movie = viewModel.retrieveMovie(with: movieID) else {
            return
        }
        let detailsViewModel = DetailsViewModel(movie: movie)
        let detailsVC = DetailsViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }
    
}
