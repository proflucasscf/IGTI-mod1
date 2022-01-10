package com.example.aula19

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.ListView
import android.widget.Toast
import com.example.aula19.model.PageUser
import com.example.aula19.networking.Endpoint
import com.example.aula19.networking.NetworkUtils
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class MainActivity : AppCompatActivity() {

    lateinit var listView: ListView
    lateinit var adapter: ArrayAdapter<String>
    var list: List<String> = ArrayList<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Cria bind Activity/View
        listView = findViewById(R.id.lista)

        // Método que busca os usuários
        getUsers()
    }

    fun getUsers() {
        // Configuração do servidor em uma variável
        val retrofitClient = NetworkUtils.getRetrofitInstance("https://reqres.in")

        // Monta a requisição e executa
        val endpoint = retrofitClient.create(Endpoint::class.java)
        val callback = endpoint.getUsers()

        // Aqui obtem a resposta
        callback.enqueue(object : Callback<PageUser> {

            // Método caso a resposta tenha retornado ERRO
            override fun onFailure(call: Call<PageUser>, t: Throwable) {
                Toast.makeText(baseContext, t.message, Toast.LENGTH_SHORT).show()
            }

            // Método caso a resposta tenha retornado SUCESSO
            override fun onResponse(call: Call<PageUser>, response: Response<PageUser>) {
                response.body()?.let {
                    it.data.forEach {
                        // Incluo na lista: Primeiro nome + Ultimo nome
                        list += it.firstName + " " + it.lastName
                    }
                    // Seto os valores na tela!
                    setValues()
                }
            }
        })
    }

    fun setValues() {
        adapter = ArrayAdapter(this, R.layout.support_simple_spinner_dropdown_item, list.toTypedArray())
        listView.adapter = adapter
    }
}