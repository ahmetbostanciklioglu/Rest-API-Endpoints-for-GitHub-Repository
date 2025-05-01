//
//  GithubRepoResponse.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

struct GithubRepoResponse: Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: Owner
    
    struct Owner: Decodable {
        let login: String
        let id: Int
        let avatarUrl: String
        
        enum CodingKeys: String, CodingKey {
            case login, id
            case avatarUrl = "avatar_url"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case fullName = "full_name"
        case owner
    }
}
