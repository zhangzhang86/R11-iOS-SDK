//
//  Rainboweleven.swift
//  Rainboweleven
//
//  Created by chenshaomou on 23/10/2017.
//  Copyright © 2017 chenshaomou. All rights reserved.
//

import Foundation

extension Dictionary{
    
    func objectToJSONString() -> String {
        if let jsonData = try? JSONSerialization .data(withJSONObject: self, options: JSONSerialization.WritingOptions.prettyPrinted){
            if let jsonString = String(data: jsonData, encoding: String.Encoding.utf8){
                return jsonString
            }
        }
        return "{}"
    }
}

public func loadRemoteURL(_ url: String,hash: String = "",scheme: String = "defaultRemote") -> RWebView{
    let rwebview = RWebView(frame: UIScreen.main.bounds)
    rwebview.loadRemoteURL(url: url)
    return rwebview
}

public func loadLocalURL(_ url: String,hash: String = "",scheme: String = "defaultRemote") -> RWebView{
    let rwebview = RWebView(frame: UIScreen.main.bounds)
    rwebview.loadLocalURL(url: url)
    return rwebview
}

