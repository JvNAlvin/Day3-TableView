//
//  ViewController.swift
//  Day3
//
//  Created by Jovan A on 15/06/22.
//

import UIKit
import SDWebImage

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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else { return TableViewCell() }
        cell.txtLabel.text = bookData.result[indexPath.row].title
        cell.txtAuthor.text = bookData.result[indexPath.row].authors?[0]
        cell.txtYear.text = "\(bookData.result[indexPath.row].status ?? "N/A")"
        cell.imgView.sd_imageIndicator = SDWebImageActivityIndicator.gray
        cell.imgView.sd_setImage(with: URL(string: "\(bookData.result[indexPath.row].thumbnailUrl ?? "")"), placeholderImage: UIImage(named: "Placeholder_book.svg"))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(bookData.result[indexPath.row].title) selected!")
    }
}

