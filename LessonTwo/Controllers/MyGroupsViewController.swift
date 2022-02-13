//
//  MyGroupsViewController.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 21.10.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let CustomTableViewCell = "CustomTableViewCell"
    let reuseIdentifierCustom = "reuseIdentifierCustom"
    let fromAllGropToMyGrupsSegue = "fromAllGropToMyGrups"

    var myGroupsArry = [Group]()
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: CustomTableViewCell, bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
    
    }
}






        
        extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
           
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return myGroupsArry.count
            }
            
            func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
                    return 100
                }
            
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCustom, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
                
                cell.configure(group:myGroupsArry[indexPath.row])
                return cell
                
                
    }
        
                @IBAction func unwindSegueToMyGroup(segue: UIStoryboardSegue){
                    if segue.identifier == fromAllGropToMyGrupsSegue,
                    let sourceVC = segue.source as? AllGroupsViewController,
                       let selectedGroup = sourceVC.selectedGroup as? Group
            
                    {
                        if isIteamAlredyInArry(group: selectedGroup) {return}
                        self.myGroupsArry.append(selectedGroup)
                        tableView.reloadData()
                }

                    func isIteamAlredyInArry(group: Group) -> Bool{
                        myGroupsArry.contains {sourseGroup in
                            sourseGroup.title == group.title
                            
                            }
                        
                    }

        }
        }
