//
//  FrindsViewController+CollectionDelegat.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 27.10.2021.
//

import UIKit

extension FriendsViewController: UICollectionViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        performSegue(withIdentifier: fromFriendsToGallery, sender: arrayByLetter(sourceArray: friendsArray, letter: arrayLetter(sourceArray: friendsArray)[indexPath.section])[indexPath.row])
    }
   
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayLetter(sourceArray: friendsArray)[section].uppercased()
        
    }


}
