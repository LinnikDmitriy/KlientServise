//
//  FrindsViewController+CollectionDataSource.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 27.10.2021.
//

import UIKit

extension FriendsViewController: UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayLetter(sourceArray: friendsArray).count
    }

    
    
    
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrayByLetter(sourceArray: friendsArray, letter: arrayLetter(sourceArray: friendsArray)[section]).count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierCustom, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(friend: arrayByLetter(sourceArray: friendsArray, letter: arrayLetter(sourceArray: friendsArray)[indexPath.section])[indexPath.row],
                       completion: { [weak self] myFriend in
            guard let self = self else {return}
            self.performSegue(withIdentifier: self.fromFriendsToGallery, sender: myFriend)
            
        })

    
        
     return cell
        }

}

