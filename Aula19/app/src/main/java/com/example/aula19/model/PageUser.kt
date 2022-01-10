package com.example.aula19.model

import com.google.gson.annotations.SerializedName

data class PageUser (
    @SerializedName("page")
    var page : Int,
    @SerializedName("per_page")
    var perPage : Int,
    @SerializedName("total")
    var total : Int,
    @SerializedName("total_pages")
    var totalPages : Int,
    @SerializedName("data")
    var data : List<User>
)