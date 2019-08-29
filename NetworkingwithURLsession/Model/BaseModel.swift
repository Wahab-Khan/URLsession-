//
//  BaseModel.swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-22.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation


struct BaseClass<T : Decodable> : Decodable{
        var StatusCode : Int?
        var StatusMessage : String?
        var Data : T?
        var ErrorMessage : String?
    
}

