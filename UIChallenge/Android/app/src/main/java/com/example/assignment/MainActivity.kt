package com.example.assignment

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.widget.addTextChangedListener

class MainActivity : AppCompatActivity() {
    private var isVerified = false
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)
        val etName = findViewById<EditText>(R.id.etName)
        val etAge = findViewById<EditText>(R.id.etAge)
        val btnVerify = findViewById<Button>(R.id.btnVerify)
        val tvStatus = findViewById<TextView>(R.id.tvStatus)

        fun resetVerification() {
            isVerified = false
            tvStatus.text = "Not Verified"
            tvStatus.setTextColor(
                resources.getColor(android.R.color.holo_red_dark)
            )
        }
        etName.addTextChangedListener { resetVerification() }
        etAge.addTextChangedListener { resetVerification() }

        btnVerify.setOnClickListener {
            val name = etName.text.toString().trim()
            val ageText = etAge.text.toString().trim()
            if(name.isEmpty()){
                etName.error = "Name required"
                return@setOnClickListener
            }
            if(ageText.isEmpty()){
                etAge.error = "Age required"
                return@setOnClickListener
            }
            val age = ageText.toInt()
            if(age<1 || age>120){
                etAge.error = "Enter valid age"
                return@setOnClickListener
            }
            isVerified = true
            tvStatus.text = "Verified"
            tvStatus.setTextColor(resources.getColor(android.R.color.holo_green_dark))
        }
        val btnContinue = findViewById<Button>(R.id.btnContinue)
        btnContinue.setOnClickListener {
            if(!isVerified){
                tvStatus.text = "Please verify first"
                tvStatus.setTextColor(
                    resources.getColor(android.R.color.holo_red_dark)
                )
                return@setOnClickListener
            }
            val intent = Intent(this, SecondActivity::class.java)
            intent.putExtra("NAME", etName.text.toString().trim())
            intent.putExtra("AGE", etAge.text.toString().trim())
            startActivity(intent)
        }
    }
}