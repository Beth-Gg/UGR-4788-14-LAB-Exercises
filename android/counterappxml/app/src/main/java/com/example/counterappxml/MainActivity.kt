package com.example.counterapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.counterappxml.R
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        incrementButton.setOnClickListener {
            count++
            counterText.text = count.toString()
        }

        decrementButton.setOnClickListener {
            if (count > 0) {
                count--
                counterText.text = count.toString()
            }
        }

        resetButton.setOnClickListener {
            count = 0
            counterText.text = count.toString()
        }
    }
}
