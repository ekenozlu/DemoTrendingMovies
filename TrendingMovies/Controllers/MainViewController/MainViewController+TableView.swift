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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell!
    }
    
    
}
