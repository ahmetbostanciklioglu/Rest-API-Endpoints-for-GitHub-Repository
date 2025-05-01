//
//  Endpoint.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

enum Endpoint {
    case repo
    
    var path: String {
        switch self {
        case .repo:
            return "/repos/ahmetbostanciklioglu/Weather-App-SwiftUI"
        }
    }
     
    var fullURLPath: String {
        return Constants.baseUrl + path
    }
    
    var url: URL?  {
        let url = URL(string: fullURLPath)
        return url
    }
}

