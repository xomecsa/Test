//
//  NextPageVC.swift
//  LogInPage
//
//  Created by Luka Khomeriki on 13.07.24.
//

import SwiftUI
import UIKit


class NextPageVC: UIViewController, UITableViewDataSource {
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return table
    }()
    
    lazy var barButton: UIBarButtonItem = {
        UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        navigationItem.rightBarButtonItem = barButton
        
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = "username"
        cell.contentConfiguration = config
        return cell
    }
    
    @objc func add() {
        tableView.backgroundColor = .red
    }
    
    
}


struct NextPageVCRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        NextPageVC()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

struct NextPageVC_Preview: PreviewProvider {
    static var previews: some View {
        NextPageVCRepresentable()
        
    }
}
