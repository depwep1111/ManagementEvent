//
//  EventTableViewController.swift
//  ManagementEvent
//
//  Created by Kiet Nguyen on 4/24/17.
//  Copyright © 2017 Group9_iOSUTE. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    // mode edit
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
    }
    
    // data sourse
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    //
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.name
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int { // Danh sach 7 ngay
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // danh sach cac su kien trong ngay
        // #warning Incomplete implementation, return the number of rows
        let eventLine = eventLines[section]
        return eventLine.events.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // set cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        cell.textLabel?.text = event.title
        
        
        return cell
    }
    
    // delete row
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
// sort cell
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let eventLine = eventLines[sourceIndexPath.section]
        let event = eventLine.events[sourceIndexPath.row]
        eventLine.events.remove(at: sourceIndexPath.row)
        let evenLineDes = eventLines[destinationIndexPath.section]
        evenLineDes.events.insert(event, at: destinationIndexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "Show Content":
                let eventDetailVC = segue.destination as! EventContentViewController
                if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell){
                    eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                    eventDetailVC.dateEvent = dateAtIndexPath(indexPath: indexPath as NSIndexPath)
                }
            default: break
                
            }
        }
    }
    
    // Lay ra event theo indexpath
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event{
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    //Lay ra ngay can hien thi
    func dateAtIndexPath(indexPath: NSIndexPath) -> String{
        let eventLine = eventLines[indexPath.section]
        return eventLine.dates
    }
    
}



