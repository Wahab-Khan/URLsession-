//
//  ViewController.swift
//  NetworkingwithURLsession
//
//  Created by macbook on 2019-08-20.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//                firstAPI()
        //        secoundApi()
        //        thirdMethod()
//        fourthApi()
//        companyInfo()
        testModelApi()
        
//        sendRequest(urlInString: "") { (res) in
        
//        WebService.invokeApi()
        
        //working fine
//        postAPI()
        
//        var someInt = 8
//        var someShit = 10
        
//        WebService.invokeApi(stringURL: "", CompanyInfo<DataModel>)
//        WebService.invokeApi(stringURL: "", CompanyInfo<DataModel>.self) { (data) in
//            print(data.Data.AddressAr)
//            print(data.Data.AddressEn)
//        }
//
//        WebService.sendRequest(urlInString: "", requestType: .get, headers: <#T##Dictionary<String, String>?#>, params: <#T##Dictionary<String, AnyObject>?#>, completion: <#T##(Result<Data, Error>) -> ()#>)
        
//        WebService.invokeApi(stringURL: "", CompanyInfo<DataModel>.self) { (data) in
//        data.Data
//        }
//        swapTwoValues(&someInt, &someShit)
        }
        
//        sendRequest(urlInString: "https://api.letsbuildthatapp.com/jsondecodable/course") { (res) in
//            switch res {
//            case .success(let data):
//                do{
//                let a = try JSONDecoder().decode(TestModel.self, from: data)
//                    print(a.name)
//                    self.nameLabel.text = a.number_of_lessons as? String
//            }catch{
//                print("this is Error form catch " , error)
//            }
//
//            case .failure(let err):
//                print(err)
//            }
//        }
//    }
//
    
//    func firstAPI(){
//        let urlString : String = "https://api.letsbuildthatapp.com/jsondecodable/course"
//
//        let url1 = URL(string: urlString)
//
//        URLSession.shared.dataTask(with: url1!) { (dataSet, responce, err) in
//
//            if let error = err{print("Error in Api" , error)}
//
//            guard let dataSet = dataSet else {return}
//
//            do{
//                let d = try JSONDecoder().decode(TestModel.self, from: dataSet)
////                print("\(d.id)")
////                print(responce)
//                DispatchQueue.main.async {
//                    self.nameLabel.text = d.name
//                }
//            }catch{
//                print("Error form catch block API : " , error)
//            }
//            }.resume()
//    }
//
    
    
//    func secoundApi(){
//
//        let stringUrl = "https://api.letsbuildthatapp.com/jsondecodable/courses"
//
//        let url = URL.init(string: stringUrl)
//
//        URLSession.shared.dataTask(with: url!) { (dataSet, responce, err) in
//
//            if let err = err{
//                print("Error form API " , err)
//                return
//            }
//
//            guard let dataSet = dataSet else {
//                print("data set is emty")
//                return}
//
//            do{
//                let data = try JSONDecoder().decode([TestModel].self, from: dataSet)
//
//                for d in data{
//                    print(d.name)
//                }
//                //                print(data)
//            }catch{
//                print("Error form catch" , error)
//            }
//
//            }.resume()
//    }
//
    
    
//    func thirdMethod(){
//
//        let stringUrl = "https://api.letsbuildthatapp.com/jsondecodable/website_description"
//
//        let url = URL(string: stringUrl)
//
//        URLSession.shared.dataTask(with: url!) { (dataSet, responce, err) in
//            if let err = err{
//                print("Error form Api" , err)
//                return
//            }
//
//            guard let data = dataSet else {
//                print("dataset is empty")
//                return
//            }
//
//            do{
//                let data = try JSONDecoder().decode(TestModel01.self, from: data)
//                print(data)
//            }catch{
//                print("Error form Catch " , error)
//            }
//            }.resume()
//    }
//
//
    func fourthApi(){

        let url = URL(string: "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields")

        URLSession.shared.dataTask(with: url!) { (dataSet, responce, err) in
            if let err = err{
                print("Error form Api " , err)
                return
            }

            guard let dataset = dataSet else {
                print("dataSet is Emprty ")
                return
            }

            do{
                let data = try JSONDecoder().decode([TestModel].self, from: dataset)
                print(data)
            }catch{
                print("Execption from parsing Api " , error)
            }
        }.resume()
    }
//
//
//    func companyInfo(){
//        let appSecretKey = "App-Secret"
//        let AppSecret = "63CB056B7AE5CF544C1FAE872E9A7453"
//
//        let stringUrl = "http://api.argaamplus.edanat.com/v1.0/json/InvestorsRelation/CompanyInfo"
//
//        let url = URL(string: stringUrl)
//
//        var request = URLRequest(url: url!)
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        request.addValue("asdf", forHTTPHeaderField: "Device-Token")
//        request.addValue(AppSecret, forHTTPHeaderField: appSecretKey)
//
//        URLSession.shared.dataTask(with: request) { (dataSet, responce, err) in
//            if let erro = err{
//                print("Error Api hit" , erro)
//                return
//            }
//
//            guard let data = dataSet else {
//                return
//            }
//
//            do{
//                let d = try JSONDecoder().decode(CompanyInfo.self, from: data)
////                print(d.Data)
//            }catch{
//                print("Error form api catch " , error)
//            }
//
//        }.resume()
//
//    }
//
//
//    func sendRequest(urlInString stringUrl: String,completion: @escaping (Result<Data,Error>) -> ()){
//
//        let url = URL(string: stringUrl)
//
//        URLSession.shared.dataTask(with: url!) { (dataSet, responce, error) in
//            if let err = error {
//                completion(.failure(err))
//                return
//            }
//
//            guard let data = dataSet else {
//                return
//            }
//
//            do {
////               let d = try JSONDecoder().decode(TestModel.self, from: data)
//                completion(.success(data))
//            }catch{
//
//            }
//        }.resume()
//    }
//
//
    func testModelApi(){

        let appSecretKey = "App-Secret"
        let AppSecret = "63CB056B7AE5CF544C1FAE872E9A7453"

        let stringUrl = "http://irapi.argaam.com/v1.0/json/InvestorsRelation/CompanyInfo"

        //http://irapi.argaam.com/v1.0/json/InvestorsRelation/CompanyInfo
        //http://api.argaamplus.edanat.com/v1.0/json/InvestorsRelation/CompanyInfo
        let url = URL(string: stringUrl)

        var request = URLRequest(url: url!)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

//        request.addValue("asdf", forHTTPHeaderField: "Device-Token")
        request.addValue(AppSecret, forHTTPHeaderField: appSecretKey)

        URLSession.shared.dataTask(with: request) { (dataSet, responce, err) in
            if let erro = err{
                print("Error Api hit" , erro)
                return
            }

            guard let realResponse = responce as? HTTPURLResponse , realResponse.statusCode == 200 else {
                return
            }
            print(realResponse.statusCode)
//            if let responce = responce {
//                print(responce)
//            }
            guard let data = dataSet else {
                return
            }

            do{
                let d = try JSONDecoder().decode(CompanyInfo<DataModel>.self, from: data)
            }catch{
                let d = try? JSONDecoder().decode(BaseClassT.self, from: data)
                print(d?.StatusCode)
                print(d?.StatusMessage)
                print("Error form api catch " , error)
            }

            }.resume()
    }
    
    
    
    func postAPI(){
        let stringUrl = "http://argaamv2mobileapis.argaamnews.com/V2.2/json/register-user"
    
        let url = URL(string: stringUrl)
        
        var request = URLRequest(url: url!)
        
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("asdasda", forHTTPHeaderField: "DeviceToken")
            request.addValue("2", forHTTPHeaderField: "LangID")
        
            let parameters: [String: Any] = [
                "EmailAddress": "mullah00@mailinator.com",
                "UserName": "Jack",
                "Password": "danat",
                "FirstName": "jj",
                "LastName": "khan",
                "MobileNo": "090078601",
                "CountryID": "",
                "IsGuest": "false"
            ]
//            request.httpBody = parameters.percentEscaped().data(using: .utf8)
        
         guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
            else{return}
        
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request) { (dataSet, responce , error) in
            if let err = error{
                print("Error from API hit ",err)
                return
            }
            
            guard let data = dataSet else {
                return
            }
            
            do{
                let d = try JSONDecoder().decode(PostModel.self, from: data)
                print(d)
            }catch{
                print("Error while parsing " , error)
            }
        }.resume()
        
    }
    
}
