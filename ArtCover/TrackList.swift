//
//  TrackList.swift
//  ArtCover
//
//  Created by Toto Tsipun on 24.05.2022.
//

import UIKit

class TrackList: UITableViewController {
    
    let imageNameArray = ["Opr — Gesaffelstein",
                          "Until I Found You — Stephen Sanchez",
                          "IDGAF — Dua Lipa",
                          "Is Everybody Going Crazy? — Nothing But Thieves",
                          "Zenzenzense Original Version — RADWIMPS",
                          "Kataomoi — Aimer",
                          "Ocean Drive — Duke Dumont",
                          "Tatakau Dansu — Satxri",
                          "Mad Visions — Royal Blood",
                          "Spoiler Original Mix — Hyper"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath)

        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if  let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as! DetailVC
                detailsVC.trackTitle = imageNameArray[indexPath.row]
            }
        }
  
    }

}
