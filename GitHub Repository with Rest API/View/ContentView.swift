//
//  ContentView.swift
//  GitHub Repository with Rest API
//
//  Created by Ahmet Bostanci on 1.05.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = GithubViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                if let repo = viewModel.repo {
                    AsyncImage(url: URL(string: repo.owner.avatarUrl)) { image in
                        image
                            .resizable()
                            .frame(width: 240, height: 240)
                            .clipShape(.circle)
                            .imageScale(.medium)
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 1)
                    } placeholder: {
                        Circle()
                            .stroke(.secondary, lineWidth: 1)
                            .foregroundStyle(.black.opacity(0.25))
                            .frame(width: 240, height: 240)
                            .overlay {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .foregroundStyle(.white.opacity(0.9))
                                    .frame(width: 120, height: 120)
                                    .aspectRatio(contentMode: .fit)
                            }
                            .shadow(radius: 0.5)
                    }
                    Text(repo.owner.login)
                        .font(.title3.weight(.semibold))
                    Text(repo.name)
                        .font(.title.weight(.medium))
                    Spacer()
                    
                } else {
                    Text(viewModel.errorMessage ?? "")
                }
            }
            .task {
                await viewModel.fetchRepository()
            }
        }
    }
}

#Preview {
    ContentView()
}
