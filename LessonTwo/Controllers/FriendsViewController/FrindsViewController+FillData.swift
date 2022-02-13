//
//  FrindsViewController+FillData.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 27.10.2021.
//

import UIKit


extension FriendsViewController{
    
    func filterFriendsArray() {
        
        let friend1 = Friend(name: "Krosh", avatar: UIImage(named: "1")!, photos: [UIImage(named: "1")!])
        let friend2 = Friend(name: "Karkar", avatar: UIImage(named: "2")!, photos: [UIImage(named: "2")!])
        let friend3 = Friend(name: "Miki", avatar: UIImage(named: "3")!, photos: [UIImage(named: "3")!])
        let friend4 = Friend(name: "Minion", avatar: UIImage(named: "4")!, photos: [UIImage(named: "4")!])
        let friend5 = Friend(name: "Pumba", avatar: UIImage(named: "8")!, photos: [UIImage(named: "8")!])
        let friend6 = Friend(name: "Timon", avatar: UIImage(named: "10")!, photos: [UIImage(named: "10")!])
        
        friendsArray.append(friend1)
        friendsArray.append(friend2)
        friendsArray.append(friend3)
        friendsArray.append(friend4)
        friendsArray.append(friend5)
        friendsArray.append(friend6)
        
        
    }}
