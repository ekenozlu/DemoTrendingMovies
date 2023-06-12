//
//  MainViewController+TableView.swift
//  TrendingMovies
//
//  Created by Eken Özlü on 12.06.2023.
//

import UIKit

extension MainViewController: UITableViewDelegate,UITableViewDataSource {
    
    func setupTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
        registerCells()
    }
    
    func registerCells() {
        tableView.register(MainMovieCell.register(), forCellReuseIdentifier: MainMovieCell.identifier)
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainMovieCell.identifier) as? MainMovieCell else {
            return UITableViewCell()
        }
        
        let cellviewModel = cellDataSource[indexPath.row]
        cell.setupCell(viewModel: cellviewModel)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieID = cellDataSource[indexPath.row].id
        self.openDetailsVC(movieID: movieID)
    }
}
