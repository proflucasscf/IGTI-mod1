package com.example.aula2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log

class MainActivity2 : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main2)
        Log.i("IGTI-AULA", "MainActivity2 - onCreate!")
    }

    override fun onStart() {
        super.onStart()
        Log.i("IGTI-AULA", "MainActivity2 - onStart!")
    }

    override fun onResume() {
        super.onResume()
        Log.i("IGTI-AULA", "MainActivity2 - onResume!")
    }

    override fun onPause() {
        super.onPause()
        Log.i("IGTI-AULA", "MainActivity2 - onPause!")
    }

    override fun onStop() {
        super.onStop()
        Log.i("IGTI-AULA", "MainActivity2 - onStop!")
    }

    override fun onDestroy() {
        super.onDestroy()
        Log.i("IGTI-AULA", "MainActivity2 - onDestroy!")
    }
}