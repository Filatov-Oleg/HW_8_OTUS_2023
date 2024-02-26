//
//  NewsViewModel.swift
//  iosApp
//
//  Created by Филатов Олег Олегович on 26.02.2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import Foundation
import shared

final class NewsViewModel: ObservableObject {
    
    private let newsService = NewsArticlesService()
    
    @Published var news: [NewsItem] = .init()
    
    init() {
        newsService.loadNews(topic: "Cars") { [weak self] result, error in
            if error != nil {
                print("Error ===> \(String(describing: error?.localizedDescription))")
                return
            } else {
                DispatchQueue.main.async {
                    self?.news = result ?? []
                }
            }
        }
    }
}
