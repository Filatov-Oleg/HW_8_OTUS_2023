package com.example.hw_8_otus_2023

import kotlinx.serialization.Serializable

@Serializable
data class NewsList(
    val articles: List<NewsItem>?
)