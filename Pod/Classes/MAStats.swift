//
//  MAStats.swift
//  Pods
//
//  Created by Bob Pascazio on 9/11/15.
//
//

import Foundation
import Alamofire

public class MAStats {
    
    public init () {
        
    }
    
    public func record() {
        
        
        println("MAStats is processing")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let name = defaults.stringForKey("firstRunMA")
        {
            
            println("MAStats previously recorded \(name)")

        } else {
        
            let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle)

            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject(timestamp, forKey: "firstRunMA")
            
            println("MAStats recording at \(timestamp)")
            
            Alamofire.request(.GET, "http://www.bytefly.com/", parameters: ["foo": "bar"])
                .response { request, response, data, error in
                    println(request)
                    println(response)
                    println(error)
                    println(data)
            }
           
        }
        
        println("MAStats done")
       
    }
    
}