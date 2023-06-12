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
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        self.title = "Trending Movies"
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }
    
}
