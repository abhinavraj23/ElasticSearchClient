//
//  StringExtension.swift
//  ElasticSearchSwift
//
//  Created by Harsh Patel on 29/10/18.
//  Copyright © 2018 Harsh Patel. All rights reserved.
//

import Foundation

extension String{
    /**
     Parses the string to JSON object
     */
    var parseJSONString : Any? {
        let data = self.data(using: String.Encoding.utf8, allowLossyConversion: false)
        if let jsonData = data {
            do {
                return try JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
            } catch {
                return nil
            }
        }
        return nil
    }
}
