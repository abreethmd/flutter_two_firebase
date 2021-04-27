package com.example.flutter_platform_specific

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.widget.Button


class SecondActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_second)
        val buttonClick= findViewById<Button>(R.id.button)
        buttonClick?.setOnClickListener {
            val intent = Intent(this, ThirdActivity::class.java)
            startActivity(intent)
        }

    }
}