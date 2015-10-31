//
//  WeatherRequest.swift
//  MyWeather
//
//  Created by KEEVIN MITCHELL on 10/31/15.
//  Copyright © 2015 Beyond 2021. All rights reserved.
//

import Foundation
import Accounts
import Social
import CoreLocation


let weatherURL = "http://api.wunderground.com/8b9bcd67a398525e/conditions/q/NY/New_York.json"
public class WeatherRequest {
    // HHTP request 
    // http://api.wunderground.com/api/8b9bcd67a398525e/conditions/q/NY/New_York.json
    
    struct Constants {
        static let  weartherURL = "http://api.wunderground.com/api/8b9bcd67a398525e/conditions/q/NY/New_York.json"
    }
    
    
    
    
    
    class func loadDataFromURL(url: NSURL, completion:(data: NSData?, error: NSError?) -> Void) {
        let session = NSURLSession.sharedSession()
        
        // Use NSURLSession to get data from an NSURL
        let loadDataTask = session.dataTaskWithURL(url, completionHandler: { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if let responseError = error {
                completion(data: nil, error: responseError)
            } else if let httpResponse = response as? NSHTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    let statusError = NSError(domain:"com.beyon2021", code:httpResponse.statusCode, userInfo:[NSLocalizedDescriptionKey : "HTTP status code has unexpected value."])
                    completion(data: nil, error: statusError)
                } else {
                    completion(data: data, error: nil)
                }
            }
        })
        
        loadDataTask.resume()
    }
    
    
    
}