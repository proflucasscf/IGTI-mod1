package com.example.aula19.networking

import com.example.aula19.model.PageUser
import retrofit2.Call
import retrofit2.http.GET

interface Endpoint {

    @GET("api/users")
    fun getUsers() : Call<PageUser>
}