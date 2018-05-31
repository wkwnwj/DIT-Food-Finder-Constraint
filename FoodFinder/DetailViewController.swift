//
//  DetailViewController.swift
//  FoodFinder
//
//  Created by D7703_27 on 2018. 5. 31..
//  Copyright © 2018년 dit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var detailTableView: UITableView!
    
    var cellImages = ""
    var cellAddress = ""
    var tel1: String = ""
    var cellMenu = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        cellImageView.image = UIImage(named: cellImages)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "주소 : " + cellAddress
            return cell
        case 1:
            cell.textLabel?.text = "번호 : " + tel1
            return cell
        default:
            cell.textLabel?.text = "메뉴 : " + cellMenu
            return cell
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
