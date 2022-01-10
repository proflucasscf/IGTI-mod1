package com.example.aula2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val btnClick = findViewById(R.id.button) as Button

        btnClick.setOnClickListener {
            val intent = Intent(this, MainActivity2::class.java)
            startActivity(intent)
        }
        Log.i("IGTI-AULA", "MainActivity - onCreate!")
    }

    override fun onStart() {
        super.onStart()
        Log.i("IGTI-AULA", "MainActivity - onStart!")
    }

    override fun onResume() {
        super.onResume()
        Log.i("IGTI-AULA", "MainActivity - onResume!")
    }

    override fun onPause() {
        super.onPause()
        Log.i("IGTI-AULA", "MainActivity - onPause!")
    }

    override fun onStop() {
        super.onStop()
        Log.i("IGTI-AULA", "MainActivity - onStop!")
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.i("IGTI-AULA", "MainActivity - onDestroy!")
    }
}