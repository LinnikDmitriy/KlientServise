//
//  Singleton.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 13.02.2022.
//

import Foundation

class Session{
    
    private init (){}
    
    static let instance = Session()
    
    var token: String = ""
    var userID: Int = 0
    
}
