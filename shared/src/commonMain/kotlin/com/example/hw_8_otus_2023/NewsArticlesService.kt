package com.example.hw_8_otus_2023

import io.ktor.client.*
import io.ktor.client.call.*
import io.ktor.client.plugins.contentnegotiation.*
import io.ktor.client.request.*
import io.ktor.serialization.kotlinx.json.*
import kotlinx.serialization.json.Json

class NewsArticlesService {
    val httpClient = HttpClient {
        install(ContentNegotiation) {
            json(Json {
                ignoreUnknownKeys = true
            })
        }
    }

    suspend fun loadNews(topic: String) = httpClient
        .get("https://newsapi.org/v2/everything?q=$topic&from=2024-02-25&sortBy=publishedAt&apiKey=cc668a0525bf44c480d5b5b5f76c13d0")
        .body<NewsList>()
        .articles
}