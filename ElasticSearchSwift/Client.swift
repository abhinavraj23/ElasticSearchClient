//
//  Client.swift
//  ElasticSearchSwift
//
//  Created by Harsh Patel on 29/10/18.
//  Copyright © 2018 Harsh Patel. All rights reserved.
//

import Foundation

public class Client : NSObject {
    
    internal let _appID: String?
    
    internal var _APIkey: String?
    
    let _maxAPIKeyLength: Int = 500
    
    
    
    public var appID : String {
        return _appID! // Because can't be nil
    }
    
    public var APIkey : String {
        return _APIkey!
    }
    
    public init(appID : String, APIkey : String) {
        
        super.init(appID: appID, apiKey: APIkey)
    }
    
}
