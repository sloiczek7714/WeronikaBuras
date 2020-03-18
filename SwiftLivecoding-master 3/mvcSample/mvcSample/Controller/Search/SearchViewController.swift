//
//  SearchViewController.swift
//  mvcSample
//
//  Created by Werus on 17/03/2020.
//  Copyright © 2020 lpb. All rights reserved.
//

import UIKit

final class SearchViewController: UIViewController
{
    typealias  SearchItem = (boldText: String, lightText: String)
    
    private let locationCellIdentifier = "locationCell"
    
    private var items = [SearchItem(boldText:"Your current location", lightText: " "),
                        SearchItem(boldText:"Warsaw", lightText: "Poland"),                    SearchItem(boldText:"Gdynia", lightText: "Poland"),                       SearchItem(boldText:"Milano", lightText: "Italy"),                    SearchItem(boldText:"Viena", lightText: "Austia")]
    
    weak var tableView: UITableView! //jezeli widok odepniemy do Viewcontrollera stracimy referencje i niebedzie wskazania na dres pamieci
    
    override func loadView()
    {
        super.loadView() //inicjalizacja pustego widoku
    
        let tableView = UITableView()
        self.view.addSubview(tableView)
        self.tableView = tableView
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.backgroundColor = .clear
        tableView.rowHeight = 62
        tableView.separatorStyle = .none
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableView.register(LocationTableViewCell.self, forCellReuseIdentifier: locationCellIdentifier)
        tableView.dataSource = self
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor(red: 85.0/255.0, green: 157.0/255.0, blue: 1.0, alpha: 1.0).cgColor, UIColor(red: 55.0/255.0, green: 157.0/255.0, blue: 1.0, alpha: 1.0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)    }
}

extension SearchViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: locationCellIdentifier, for: indexPath) as? LocationTableViewCell else
        { return UITableViewCell() }
        // cell.backgroundColor = .clear
       // cell.contentView.backgroundColor = .clear
        //cell.textLabel?.textColor = .white
        cell.model = items[indexPath.row]
        
       
        //cell.imageView?.image = UIImage(systemName: "paperplane.fill")
      //      cell.imageView?.tintColor = .white
        return cell
    }
}

