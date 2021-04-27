package com.example.flutter_platform_specific

import android.content.Intent
import android.os.Bundle
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

    private val CHANNEL = "test_activity"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(FlutterEngine(applicationContext))
        Log.i("HomeActivity", "oncreate")
        MethodChannel(flutterEngine?.getDartExecutor()?.getBinaryMessenger(), CHANNEL).setMethodCallHandler(
                object : MethodChannel.MethodCallHandler {
                    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
                        if(call.method.equals("startNewActivity")) {
                            startNewActivity()
                        }
                    }
                })

    }

    private fun startNewActivity() {
        val intent = Intent(this, SecondActivity::class.java)
        startActivity(intent)
    }

}
