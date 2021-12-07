package com.example.penzi

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.text.TextUtils
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.example.penzi.interfaces.ApiInterface
import com.example.penzi.models.ServerResponse
import com.example.penzi.models.User
import com.example.penzi.retrofit.RetrofitApiClient
import com.google.android.material.snackbar.Snackbar
import com.google.android.material.textview.MaterialTextView
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class MainActivity : AppCompatActivity() {


    private lateinit var apiInterface: ApiInterface
    private lateinit var sent_button: TextView
    private lateinit var message: EditText
    private lateinit var phone: EditText
    private lateinit var code: EditText


//ctrl alt L
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    apiInterface = RetrofitApiClient.getClient()!!.create(ApiInterface::class.java)
        sent_button = findViewById(R.id.button_send)
        message = findViewById(R.id.message)
        phone = findViewById(R.id.phone)
        code = findViewById(R.id.code)

        sent_button.setOnClickListener {

            if (TextUtils.isEmpty(message.text.toString())) {
                message.error = "Can't send an empty message"
                message.requestFocus()
            } else {
//                val sender = "0707726836"
//                val receiver = "25005"
                val user = User(message.text.toString(), phone.text.toString(), code.text.toString())
                messageSend(user)
               message.setText("")

            }

        }

    }

    private fun messageSend(userMesssage: User) {
        val call: Call<ServerResponse?>? = apiInterface.getMessageResponse(userMesssage)

        call!!.enqueue(object : Callback<ServerResponse?> {
            override fun onResponse(
                call: Call<ServerResponse?>,
                response: Response<ServerResponse?>
            ) {
                val validity = response.body()
//                Toast.makeText(this@MainActivity, validity!!.messageString, Toast.LENGTH_SHORT)
//                    .show()
                val alertDialog = AlertDialog.Builder(this@MainActivity)
                alertDialog.setTitle("Response")
                    .setPositiveButton("OK", null)
                    .setMessage(validity!!.messageString)
                    .setCancelable(true)
                val alert = alertDialog.create()
                alert.setTitle("RESPONSE")
                alert.show()

            }


            override fun onFailure(call: Call<ServerResponse?>, t: Throwable) {
                Toast.makeText(this@MainActivity, t.message, Toast.LENGTH_SHORT).show()
//                Snackbar.make(view, t.message, Snackbar.LENGTH_LONG).show()


                val alertDialog = AlertDialog.Builder(this@MainActivity)
                alertDialog.setTitle("Response")
                    .setPositiveButton("OK", null)
                    .setMessage(t.message)
                    .setCancelable(true)
                val alert = alertDialog.create()
                alert.setTitle("RESPONSE")
                alert.show()
            }

        })
    }
}