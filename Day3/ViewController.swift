//
//  ViewController.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var bookData = FetchData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadData()
        setup()
    }
    
    func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        txtLabel.text = "Book List"
    }
    
    func loadData() {
        bookData.readJSON()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookData.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.txtLabel.text = bookData.result[indexPath.row].title
        cell.txtAuthor.text = bookData.result[indexPath.row].author
        cell.txtYear.text = "\(bookData.result[indexPath.row].year)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(bookData.result[indexPath.row].title) selected!")
        
    }
}

