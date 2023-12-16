package ai.codia.x.component

import android.content.Context
import android.content.res.TypedArray
import android.graphics.Canvas
import android.util.AttributeSet
import androidx.core.graphics.withSave
import ai.codia.x.kotlin.demo.R
import com.google.android.flexbox.FlexboxLayout

class CodiaRoundFlexboxLayout @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null
) : FlexboxLayout(context, attrs) {

    private val radiusLayoutUtil = CodiaRoundLayoutUtil(this)

    init {
        val array = context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundFlexboxLayout, 0, 0)
        radiusLayoutUtil.init(getCornerRadius(array))
        array.recycle()
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        radiusLayoutUtil.onSizeChanged(w, h, oldw, oldh)
    }

    override fun draw(canvas: Canvas) {
        canvas.withSave {
            radiusLayoutUtil.clipCanvas(canvas)
            super.draw(canvas)
        }
    }

    override fun dispatchDraw(canvas: Canvas) {
        canvas.withSave {
            radiusLayoutUtil.clipCanvas(canvas)
            super.dispatchDraw(canvas)
        }
    }

    fun updateRectRadius(radius: Float) {
        radiusLayoutUtil.updateRectRadius(radius)
    }

    fun updateRectRadius(topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float) {
        radiusLayoutUtil.updateRectRadius(topLeft, topRight, bottomRight, bottomLeft)
    }

    private fun getCornerRadius(array: TypedArray): CodiaRoundLayoutUtil.CornersHolder {
        val radius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_radius, 0f)
        val topLeftRadius =
            array.getDimension(R.styleable.CodiaRoundFlexboxLayout_topLeftRadius, radius)
        val topRightRadius =
            array.getDimension(R.styleable.CodiaRoundFlexboxLayout_topRightRadius, radius)
        val bottomLeftRadius =
            array.getDimension(R.styleable.CodiaRoundFlexboxLayout_bottomRightRadius, radius)
        val bottomRightRadius =
            array.getDimension(R.styleable.CodiaRoundFlexboxLayout_bottomLeftRadius, radius)
        return CodiaRoundLayoutUtil.CornersHolder.create(
            topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius
        )
    }
}