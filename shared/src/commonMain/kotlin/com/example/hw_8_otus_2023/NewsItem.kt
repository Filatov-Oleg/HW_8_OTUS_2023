package com.example.hw_8_otus_2023

import kotlinx.serialization.Serializable

@Serializable
data class NewsItem(
    val url: String?,
    val title: String?,
    val author: String?,
    val urlToImage: String?
)