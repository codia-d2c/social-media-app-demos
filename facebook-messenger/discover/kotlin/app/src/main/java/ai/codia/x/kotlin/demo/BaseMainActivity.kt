package ai.codia.x.kotlin.demo

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.Window
import android.view.WindowManager
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat

/**
 * Created by codia-figma
 */
abstract class BaseMainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        val window = window
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS)
        window.statusBarColor = ContextCompat.getColor(this, android.R.color.black)

        setContentView(R.layout.activity_codia_main)
        val rootView = findViewById<ViewGroup>(R.id.root)
        LayoutInflater.from(this).inflate(R.layout.layout_codia_root, rootView, false).also {
            rootView.addView(it, 0)
        }

        onViewCreated()
    }

    protected abstract fun onViewCreated()
}