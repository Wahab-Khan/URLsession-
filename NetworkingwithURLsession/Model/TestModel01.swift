//
//  TestModel01.swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-20.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation


struct TestModel01 : Decodable {
    let name : String
    
    let description : String
    
    let courses : [TestModel]
}
