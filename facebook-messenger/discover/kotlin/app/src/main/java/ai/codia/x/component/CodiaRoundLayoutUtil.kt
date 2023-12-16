package ai.codia.x.component

import android.graphics.Canvas
import android.graphics.Outline
import android.graphics.Path
import android.graphics.RectF
import android.view.View
import android.view.ViewOutlineProvider

/**
 * Created by codia-figma
 */
class CodiaRoundLayoutUtil(private val view: View) {
    private var canvasRounder: CanvasRounder? = null
    fun init(holder: CornersHolder) {
        canvasRounder = CanvasRounder.create(holder)
        view.outlineProvider = RoundOutlineProvider.from(holder)
        view.setClipToOutline(true)
    }

    fun init(radius: Int) {
        val holder = CornersHolder.create(radius.toFloat())
        init(holder)
    }

    fun clipCanvas(canvas: Canvas) {
        canvasRounder!!.clipPath(canvas)
    }

    fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        canvasRounder!!.updateSize(w, h)
        view.invalidate()
    }

    /**
     * reset rect radius
     *
     * @param radius
     */
    fun updateRectRadius(radius: Float) {
        canvasRounder!!.updateRadius(radius)
        view.outlineProvider = RoundOutlineProvider.from(radius)
        view.invalidate()
    }

    fun updateRectRadius(topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float) {
        canvasRounder!!.updateRadius(topLeft, topRight, bottomRight, bottomLeft)
        view.outlineProvider = RoundOutlineProvider.from(topLeft, topRight, bottomRight, bottomLeft)
        view.invalidate()
    }

    class CornersHolder internal constructor(
        val topLeftRadius: Float,
        val topRightRadius: Float,
        val bottomRightRadius: Float,
        val bottomLeftRadius: Float
    ) {
        companion object {
            fun create(
                topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float
            ): CornersHolder {
                return CornersHolder(topLeft, topRight, bottomRight, bottomLeft)
            }

            fun create(radius: Float): CornersHolder {
                return CornersHolder(radius, radius, radius, radius)
            }
        }
    }

    internal class RoundOutlineProvider(val corner: CornersHolder) : ViewOutlineProvider() {
        override fun getOutline(view: View, outline: Outline) {
            val rectF = RectF(0f, 0f, view.measuredWidth.toFloat(), view.measuredHeight.toFloat())
            val path = Path()
            path.addRoundRect(
                rectF, floatArrayOf(
                    corner.topLeftRadius,
                    corner.topLeftRadius,
                    corner.topRightRadius,
                    corner.topRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomLeftRadius,
                    corner.bottomLeftRadius
                ), Path.Direction.CW
            )
            path.close()
            outline.setConvexPath(path)
        }

        companion object {
            fun from(holder: CornersHolder): RoundOutlineProvider {
                return RoundOutlineProvider(holder)
            }

            fun from(radius: Float): RoundOutlineProvider {
                return RoundOutlineProvider(CornersHolder.create(radius))
            }

            fun from(
                topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float
            ): RoundOutlineProvider {
                return RoundOutlineProvider(
                    CornersHolder.create(
                        topLeft, topRight, bottomRight, bottomLeft
                    )
                )
            }
        }
    }

    internal abstract class CanvasRounder {
        abstract fun clipPath(canvas: Canvas)
        abstract fun updateSize(w: Int, h: Int)
        abstract fun updateRadius(radius: Float)
        abstract fun updateRadius(
            topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float
        )

        companion object {
            fun create(corner: CornersHolder): CanvasRounder {
                return RealCanvasRounder(corner)
            }
        }
    }

    internal class RealCanvasRounder(private var corner: CornersHolder) : CanvasRounder() {
        private val path = Path()
        private val rectF = RectF(0f, 0f, 0f, 0f)
        override fun clipPath(canvas: Canvas) {
            canvas.clipPath(path)
        }

        override fun updateSize(w: Int, h: Int) {
            rectF[0f, 0f, w.toFloat()] = h.toFloat()
            updateRadius()
        }

        override fun updateRadius(radius: Float) {
            corner = CornersHolder.create(radius)
            updateRadius()
        }

        override fun updateRadius(
            topLeft: Float, topRight: Float, bottomRight: Float, bottomLeft: Float
        ) {
            corner = CornersHolder.create(topLeft, topRight, bottomRight, bottomLeft)
            updateRadius()
        }

        private fun updateRadius() {
            path.reset()
            path.addRoundRect(
                rectF, floatArrayOf(
                    corner.topLeftRadius,
                    corner.topLeftRadius,
                    corner.topRightRadius,
                    corner.topRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomLeftRadius,
                    corner.bottomLeftRadius
                ), Path.Direction.CW
            )
            path.close()
        }
    }
}
