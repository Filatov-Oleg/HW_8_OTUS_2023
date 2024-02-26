package com.example.hw_8_otus_2023

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform