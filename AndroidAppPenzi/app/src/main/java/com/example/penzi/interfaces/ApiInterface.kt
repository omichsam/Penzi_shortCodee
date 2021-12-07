package com.example.penzi.interfaces


import android.provider.ContactsContract
import com.example.penzi.models.ServerResponse
import com.example.penzi.models.User
import retrofit2.Call
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST
import retrofit2.http.Query

interface ApiInterface {
    @POST("/penzi/api/userss.php")
    fun getMessageResponse(@Body userFeedback: User?): Call<ServerResponse?>?

}