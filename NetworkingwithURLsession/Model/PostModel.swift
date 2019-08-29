//
//  PostModel.swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-25.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation


struct PostModel:Decodable{
    
    var StatusCode: Int?
    var StatusMessage : String = ""
    
    var Data : DataModell?
    
}

struct DataModell:Decodable{
    var WasSuccessful : String?
    var ErrorMessage : String?
    var Key : String?
    var UserName : String?
    var UserID : Int?
    var PhotoURL : String?
    var EmailAddress : String?
    var userRank : Int?
//    var userRankName : String
//    var CreatedOn : String
//    UsageType": "",
//    "LastLogin": "",
//    "userPoints": 0,
//    "FirstName": "",
//    "LastName": "",
//    "MobileNo": "",
//    "CountryID": 0,
//    "boughtpoints": false,
//    "PurchasesCount": 0,
//    "PointsValidTill": 0,
//    "SubscribedPackageID": 0,
//    "PreferenceLangID": 1
}
