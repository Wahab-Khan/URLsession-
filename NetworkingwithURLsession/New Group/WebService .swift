//
//  WebService .swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-22.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation


//things to handle
//header
//requestMethod
//contentType
//params

enum RequestMethod: String {
    case none = "NONE"
    case post = "POST"
    case get = "GET"
    case put = "PUT"
    case delete = "DELETE"
}

class WebService{
    
    static func sendRequest(urlInString : String,completion: @escaping (Result<Data,Error>) -> ()){
    
        let appSecretKey = "App-Secret"
        let AppSecret = "63CB056B7AE5CF544C1FAE872E9A7453"
        
        let url = URL(string: urlInString)
        
        var request = URLRequest(url: url!)
        request.addValue("asdf", forHTTPHeaderField: "Device-Token")
        request.addValue(AppSecret, forHTTPHeaderField: appSecretKey)
        
 
        URLSession.shared.dataTask(with: request) { (dataSet, responce, error) in
            if let err = error {
                completion(.failure(err))
                return
            }
            
            guard let data = dataSet else {
                return
            }
                
                completion(.success(data))
            }.resume()
        
    }

    
    
//    static func invokeApi(){
//
//        let stringUrl = "http://irapi.argaam.com/v1.0/json/InvestorsRelation/CompanyInfo"
//
//        var data:CompanyInfo<DataModel>?
//
//        WebService.sendRequest(urlInString: stringUrl) { (res) in
//            switch res {
//            case .success(let dataSet):
//                do{
//                    data = try JSONDecoder().decode(CompanyInfo<DataModel>.self, from: dataSet)
//                }catch{
//                    print("Error got catch")
//                }
//            case .failure(let err):
//                print(err)
//            }
//            print(data?.Data.AddressAr)
//        }
//
//    }
    
    
    static func invokeApi<T:Decodable>(stringURL : String,_ dataModel : CompanyInfo<T>.Type,Completerion : @escaping (CompanyInfo<T>) -> ()){
    
            let stringUrl = "http://irapi.argaam.com/v1.0/json/InvestorsRelation/CompanyInfo"
    
            WebService.sendRequest(urlInString: stringUrl) { (res) in
                switch res {
                case .success(let dataSet):
                    do{
                        let data = try JSONDecoder().decode(dataModel.self, from: dataSet)
                        Completerion(data)
                    }catch{
                        print("Error got catch")
                    }
                case .failure(let err):
                    print(err)
                }
            }
    
        }
    
    
    
    static func sendRequest(urlInString : String,
                            requestType: RequestMethod,
                            headers headerParams: Dictionary<String,String>?,
                            params postParams: Dictionary<String,AnyObject>?,
                            completion: @escaping (Result<Data,Error>) -> ()){
        
//        let appSecretKey = "App-Secret"
//        let AppSecret = "63CB056B7AE5CF544C1FAE872E9A7453"
        
        let url = URL(string: urlInString)
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = requestType.rawValue
 
        if let header = headerParams{
            for (key ,value) in header{
                request.addValue(value, forHTTPHeaderField: key)
            }
        }else{
            print("header is nill : URL is \(urlInString)")
        }
        
        if let params = postParams{
            do{
                let body = try JSONSerialization.data(withJSONObject: params, options: [])
                request.httpBody = body
            }catch{
                print("Error form params catch : " , error)
            }
        }
//        request.addValue("asdf", forHTTPHeaderField: "Device-Token")
//        request.addValue(AppSecret, forHTTPHeaderField: appSecretKey)
        
        
        URLSession.shared.dataTask(with: request) { (dataSet, responce, error) in
            if let err = error {
                completion(.failure(err))
                return
            }
            
            guard let data = dataSet else {
                return
            }
            
            completion(.success(data))
            }.resume()
        
    }

    
    static func getHeader() -> Dictionary<String,String>{
        return ["":"",
                "":"",
                "":""]
    }
    
    //m
    static func invokeApi<T:Decodable>(stringURL : String,
                                       requestType: RequestMethod,
                                       headers headerParams: Dictionary<String,String>?,
                                       params postParams: Dictionary<String,AnyObject>?,
                                       _ dataModel : CompanyInfo<T>.Type,
                                       Completerion : @escaping (CompanyInfo<T>) -> ()){
        
        WebService.sendRequest(urlInString: stringURL, requestType: requestType, headers: headerParams, params: postParams) { (res) in
            switch res {
            case .success(let dataSet):
                do{
                    let data = try JSONDecoder().decode(dataModel.self, from: dataSet)
                    Completerion(data)
                }catch{
                    print("Error got catch")
                }
            case .failure(let err):
                print(err)
            }
        }
        
    }
    
}
