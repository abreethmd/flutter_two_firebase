package com.example.flutter_platform_specific

import android.app.Activity
import android.os.Bundle

class ThirdActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_third)
    }
}