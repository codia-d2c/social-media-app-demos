package ai.codia.x.component

import ai.codia.x.component.CodiaRoundLayoutUtil.CornersHolder
import ai.codia.x.kotlin.demo.R
import android.content.Context
import android.content.res.TypedArray
import android.graphics.Canvas
import android.util.AttributeSet
import android.widget.FrameLayout

/**
 * Created by codia-figma
 */
class CodiaRoundFrameLayout : FrameLayout {
    private val radiusLayoutUtil: CodiaRoundLayoutUtil

    // Fixed width, calculate height through the proportion
    private var mWidthHeightRadio = -1f

    constructor(context: Context, radius: Int) : super(context) {
        radiusLayoutUtil = CodiaRoundLayoutUtil(this)
        radiusLayoutUtil.init(radius)
    }

    @JvmOverloads
    constructor(
        context: Context, attrs: AttributeSet?, defStyleAttr: Int = 0, defStyleRes: Int = 0
    ) : super(context, attrs, defStyleAttr, defStyleRes) {
        radiusLayoutUtil = CodiaRoundLayoutUtil(this)
        init(context, attrs)
    }

    private fun init(context: Context, attrs: AttributeSet?) {
        val array = context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundFrameLayout, 0, 0)
        val holder = getCornerRadius(array)
        radiusLayoutUtil.init(holder)
        mWidthHeightRadio =
            array.getFloat(R.styleable.CodiaRoundFrameLayout_widthHeightRadio, mWidthHeightRadio)
        array.recycle()
    }

    override fun draw(canvas: Canvas) {
        val save = canvas.save()
        radiusLayoutUtil.clipCanvas(canvas)
        super.draw(canvas)
        canvas.restoreToCount(save)
    }

    override fun dispatchDraw(canvas: Canvas) {
        val save = canvas.save()
        radiusLayoutUtil.clipCanvas(canvas)
        super.dispatchDraw(canvas)
        canvas.restoreToCount(save)
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        radiusLayoutUtil.onSizeChanged(w, h, oldw, oldh)
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
        if (mWidthHeightRadio > 0) {
            val width = MeasureSpec.getSize(widthMeasureSpec)
            val height = (width / mWidthHeightRadio).toInt()
            super.onMeasure(
                widthMeasureSpec, MeasureSpec.makeMeasureSpec(height, MeasureSpec.EXACTLY)
            )
        }
    }

    fun updateWidthHeightRadio(radio: Float) {
        mWidthHeightRadio = radio
        requestLayout()
    }

    /**
     * reset rect radius
     *
     * @param radius
     */
    fun updateRectRadius(radius: Float) {
        radiusLayoutUtil.updateRectRadius(radius)
    }

    fun updateRectRadius(topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float) {
        radiusLayoutUtil.updateRectRadius(topLeft, topRight, bottomRight, bottomLeft)
    }

    companion object {
        private fun getCornerRadius(array: TypedArray): CornersHolder {
            val radius = array.getDimension(R.styleable.CodiaRoundFrameLayout_cornerRadius, 0f)
            val topLeftRadius =
                array.getDimension(R.styleable.CodiaRoundFrameLayout_topLeftRadius, radius)
            val topRightRadius = array.getDimension(
                R.styleable.CodiaRoundFrameLayout_topRightRadius, radius
            )
            val bottomLeftRadius = array.getDimension(
                R.styleable.CodiaRoundFrameLayout_bottomLeftRadius, radius
            )
            val bottomRightRadius = array.getDimension(
                R.styleable.CodiaRoundFrameLayout_bottomRightRadius, radius
            )
            return CornersHolder.create(
                topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius
            )
        }
    }
}
