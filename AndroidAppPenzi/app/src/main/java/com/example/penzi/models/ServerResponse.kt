package com.example.penzi.models
import com.google.gson.annotations.SerializedName
data class ServerResponse (
    @SerializedName("status") val statusString: String,
    @SerializedName("message") val messageString: String,
    @SerializedName("sender")  val sender: String
        )

