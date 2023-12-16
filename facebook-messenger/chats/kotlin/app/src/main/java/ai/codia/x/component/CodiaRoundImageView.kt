package ai.codia.x.component

import ai.codia.x.kotlin.demo.R
import android.content.Context
import android.graphics.Canvas
import android.graphics.Outline
import android.graphics.Path
import android.util.AttributeSet
import android.view.View
import android.view.ViewOutlineProvider
import androidx.appcompat.widget.AppCompatImageView

/**
 * Created by codia-figma
 */
class CodiaRoundImageView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : AppCompatImageView(context, attrs, defStyleAttr) {
    private var topLeftRadius = 0
    private var topRightRadius = 0
    private var bottomLeftRadius = 0
    private var bottomRightRadius = 0
    private var isSameRadius = false
    private val path = Path()

    init {
        initAttrs(context, attrs, defStyleAttr)
    }

    private fun initAttrs(context: Context, attrs: AttributeSet?, defStyleAttr: Int) {
        val ta =
            context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundImageView, defStyleAttr, 0)
        val radius = ta.getDimension(R.styleable.CodiaRoundImageView_radius, 0f).toInt()
        topLeftRadius =
            ta.getDimension(R.styleable.CodiaRoundImageView_topLeftRadius, radius.toFloat()).toInt()
        topRightRadius =
            ta.getDimension(R.styleable.CodiaRoundImageView_topRightRadius, radius.toFloat())
                .toInt()
        bottomRightRadius =
            ta.getDimension(R.styleable.CodiaRoundImageView_bottomRightRadius, radius.toFloat())
                .toInt()
        bottomLeftRadius =
            ta.getDimension(R.styleable.CodiaRoundImageView_bottomLeftRadius, radius.toFloat())
                .toInt()
        isSameRadius =
            topLeftRadius == topRightRadius && topLeftRadius == bottomRightRadius && topLeftRadius == bottomLeftRadius
        ta.recycle()
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        updatePath()
    }

    private fun updatePath() {
        path.reset()
        if (isSameRadius) {
            setClipToOutline(true)
            outlineProvider = object : ViewOutlineProvider() {
                override fun getOutline(view: View, outline: Outline) {
                    outline.setRoundRect(0, 0, width, height, topLeftRadius.toFloat())
                }
            }
        } else {
            setClipToOutline(false)
            outlineProvider = null
            path.addRoundRect(
                0f, 0f, width.toFloat(), bottom.toFloat(), floatArrayOf(
                    topLeftRadius.toFloat(),
                    topLeftRadius.toFloat(),
                    topRightRadius.toFloat(),
                    topRightRadius.toFloat(),
                    bottomRightRadius.toFloat(),
                    bottomRightRadius.toFloat(),
                    bottomLeftRadius.toFloat(),
                    bottomLeftRadius.toFloat()
                ), Path.Direction.CW
            )
        }
    }

    override fun onDraw(canvas: Canvas) {
        if (isSameRadius) {
            super.onDraw(canvas)
        } else {
            val c = canvas.save()
            canvas.clipPath(path)
            super.onDraw(canvas)
            canvas.restoreToCount(c)
        }
    }

    companion object {
        private const val TAG = "RoundImageView"
    }
}