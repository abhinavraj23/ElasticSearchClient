//
//  ElasticSearch.swift
//  ElasticSearchSwift
//
//  Created by Harsh Patel on 29/10/18.
//  Copyright © 2018 Harsh Patel. All rights reserved.
//

import Foundation

class ElasticSearch: NSObject {
    var baseUrl : String?
    var app : String?
    var credentials : String?
    var api: API?

    init(url baseUrl: String, app: String, credentials: String){
        self.baseUrl = baseUrl
        self.app = app
        self.credentials = credentials
        self.api = API(credentials: credentials)
    }
    
    func index(type : String, id : String?, body : [String : AnyObject], completionHandler: @escaping (Any?, Error?) -> Void){
        
        var endPoint = type
        var method = API.RequestType.POST.rawValue
        if id != nil{
            method = API.RequestType.PUT.rawValue
            endPoint += "/" + id!
        }
        
        api?.request(type: method, endPoint: endPoint, params: body) { (response, error) in
            guard error == nil else{
                completionHandler(nil, error)
                return
            }
            guard response == nil else{
                completionHandler(response, nil)
                return
            }
        }
    }
    
}
