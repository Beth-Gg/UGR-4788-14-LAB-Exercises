package com.example.counterappkotlin

import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.ui.Modifier
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialTheme {
                Counters()
            }
        }
    }
}

class CountersModel(scope: CoroutineScope) {
    var Count by mutableIntStateOf(0)
        private set

    val total by derivedStateOf { Count }

    init {
        snapshotFlow { "Number of clicks: $total" }
            .onEach(::println)
            .launchIn(scope)
    }

    fun incNumber() {
        Count++
    }

    fun decNumber() {
        Count--
    }

    fun reset() {
        Count = 0
    }
}

@Composable
fun Counters() {
    val scope = rememberCoroutineScope()
    val model = remember { CountersModel(scope) }
    Column {
        Text(
            text = "Presses: ${model.Count}",
            modifier = Modifier.clickable(onClick = model::incNumber)
        )
        // Uncomment and modify this part if you need the Oranges text
        Text(
            text = "Presses: ${model.Count}",
            modifier = Modifier.clickable(onClick = model::decNumber)
        )
        Text(
            text = "Total: ${model.total}"
        )
        Button(onClick = model::reset) {
            Text("Reset")
        }
    }
}