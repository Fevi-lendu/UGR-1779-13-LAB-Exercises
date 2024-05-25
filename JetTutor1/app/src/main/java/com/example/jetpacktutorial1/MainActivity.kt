package com.example.jetpacktutorial1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard(name = "Android")
        }
    }

    @Composable
    fun MessageCard(name: String) {
        BasicText(text = "Hello $name")
    }

    @Preview
    @Composable
    fun PreviewMessageCard() {
        MessageCard(name = "Android")
    }
}
