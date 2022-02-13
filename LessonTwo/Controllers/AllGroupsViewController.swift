//
//  AllGroupsViewController.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 21.10.2021.
//

import UIKit

class AllGroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    let CustomTableViewCell = "CustomTableViewCell"
    let reuseIdentifierCustom = "reuseIdentifierCustom"
    
    var allGroupsArry = [Group]()
    let fromAllGropToMyGrupsSegue = "fromAllGropToMyGrups"
    
    var selectedGroup: Group?
    
    func fill() {
        let group1 = Group(title: "group1", avatar: UIImage(named: "6")!)
        let group2 = Group(title: "group2", avatar: UIImage(named: "7")!)
        let group3 = Group(title: "group3", avatar: UIImage(named: "9")!)
        
        
        allGroupsArry.append(group1)
        allGroupsArry.append(group2)
        allGroupsArry.append(group3)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fill()
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: CustomTableViewCell, bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

        
    extension AllGroupsViewController: UITableViewDelegate, UITableViewDataSource {
           
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return allGroupsArry.count
            }
            
            func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
                    return 100
                }
            
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCustom, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
                
                cell.configure(group:allGroupsArry[indexPath.row])
                return cell
    }

            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
                self.selectedGroup = allGroupsArry[indexPath.row]
                performSegue(withIdentifier: fromAllGropToMyGrupsSegue, sender: nil)
                }
            }

