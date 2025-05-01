//
//  GithubViewModel.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import Foundation

@MainActor
class GithubViewModel: ObservableObject {
    @Published var repo: GithubRepoResponse?
    @Published var errorMessage: String?
    
    var service = GithubService.instance
    
    func fetchService() async {
        do {
            let response: GithubRepoResponse = try await service.githubRepoService(url: .repo)
            repo = response
            errorMessage = nil
        } catch {
            errorMessage = error.localizedDescription
            repo = nil
            
            print("Fetch error: \(error)")
        }
    }
}
