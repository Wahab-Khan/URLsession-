//
//  CompanyInfo.swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-21.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation


class BaseClassT: Decodable {
    var StatusCode : Int?
    var StatusMessage : String?
    var ErrorMessage : String?
}

class CompanyInfo<T : Decodable>: Decodable {
    
   // var StatusCode : Int?
   // var StatusMessage : String?
//    var Data : DataModel?
    var Data : T
    //var ErrorMessage : String?
}


class DataModel : Decodable{
    var NameAr : String?
    var NameEn : String?
    var CityAr : String?
    var CityEn : String?
    var Website : String?
    var Email : String?
    var Phone : String?
    var Fax : String?
    var AddressAr : String?
    var AddressEn : String?
    var POBoxAr : String?
    var POBoxEn : String?
}
