//
//  ViewController.swift
//  MVVMExample2
//
//  Created by 박성원 on 2017. 6. 26..
//  Copyright © 2017년 sungwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewModel.fetchMovies {
            self.tableView.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItemsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cellId"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        configureCell(cell: cell!, forRowAtIndexPath: indexPath)
        
        return cell!
    }
    
    func configureCell(cell: UITableViewCell, forRowAtIndexPath indexPath: IndexPath) {
        cell.textLabel?.text = viewModel.titleForItemAtIndexPath(indexPath: indexPath)
    }
    
}

