package com.example.penzi.models

import com.google.gson.annotations.SerializedName

data class User(
    @SerializedName("message") val message: String,
    @SerializedName("sender") val sender: String,
    @SerializedName("receiver") val receiver: String

)