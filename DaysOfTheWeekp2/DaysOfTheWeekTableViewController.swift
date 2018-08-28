//
//  DaysOfTheWeekTableViewController.swift
//  DaysOfTheWeekp2
//
//  Created by Xavier on 8/28/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class DaysOfTheWeekTableViewController: UITableViewController {
    
    var daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  daysOfTheWeek.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = daysOfTheWeek[indexPath.row]
        cell.textLabel?.text = day

        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if segue.identifier == "todayDetailVC" {
            if let destinationVC = segue.destination as? DayViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let day = daysOfTheWeek[indexPath.row]
                    destinationVC.day = day
                }
                
            }
        }
        // Pass the selected object to the new view controller.
    }

}
