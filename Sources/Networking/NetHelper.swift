//
//  NetHelper.swift
//
//
//  Created by Ankith K on 02/03/24.
//

import Foundation

public struct NetHelper{
    public static func configureRequest(endpoint:API)->URLRequest?{
    
        var urlComp = URLComponents()
        urlComp.scheme = endpoint.httpScheme.rawValue
        urlComp.host = endpoint.host
        urlComp.path = endpoint.path
        urlComp.port = endpoint.port
        urlComp.queryItems = endpoint.queryParams
        
        guard let url = urlComp.url else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.httpMethod.rawValue
        
        if let params = endpoint.headerParam{
            for (key, value) in params{
                urlRequest.addValue(value, forHTTPHeaderField: key)
            }
        }
        
        return urlRequest
    }
}
