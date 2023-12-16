package ai.codia.x.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import ai.codia.x.java.demo.R;

/**
 * Created by codia-figma
 */
public class CodiaRoundFrameLayout extends FrameLayout {
    private final CodiaRoundLayoutUtil roundLayoutUtil;
    // Fixed width, calculate height through the proportion
    private float mWidthHeightRadio = -1;

    public CodiaRoundFrameLayout(@NonNull Context context, int radius) {
        super(context);
        roundLayoutUtil = new CodiaRoundLayoutUtil(this);
        roundLayoutUtil.init(radius);
    }

    public CodiaRoundFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CodiaRoundFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public CodiaRoundFrameLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        roundLayoutUtil = new CodiaRoundLayoutUtil(this);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        final TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundFrameLayout, 0, 0);
        CodiaRoundLayoutUtil.CornersHolder holder = getCornerRadius(array);
        roundLayoutUtil.init(holder);
        mWidthHeightRadio = array.getFloat(R.styleable.CodiaRoundFrameLayout_widthHeightRadio, mWidthHeightRadio);
        array.recycle();
    }

    @Override
    public void draw(Canvas canvas) {
        final int save = canvas.save();
        roundLayoutUtil.clipCanvas(canvas);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        final int save = canvas.save();
        roundLayoutUtil.clipCanvas(canvas);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        roundLayoutUtil.onSizeChanged(w, h, oldw, oldh);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (mWidthHeightRadio > 0) {
            int width = MeasureSpec.getSize(widthMeasureSpec);
            int height = (int) (width / mWidthHeightRadio);
            super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(height, MeasureSpec.EXACTLY));
        }
    }

    public void updateWidthHeightRadio(float radio) {
        mWidthHeightRadio = radio;
        requestLayout();
    }

    /**
     * reset rect radius
     *
     * @param radius
     */
    public void updateRectRadius(float radius) {
        roundLayoutUtil.updateRectRadius(radius);
    }

    public void updateRectRadius(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        roundLayoutUtil.updateRectRadius(topLeft, topRight, bottomRight, bottomLeft);
    }

    private static CodiaRoundLayoutUtil.CornersHolder getCornerRadius(TypedArray array) {
        final float radius = array.getDimension(R.styleable.CodiaRoundFrameLayout_cornerRadius, 0f);
        final float topLeftRadius = array.getDimension(R.styleable.CodiaRoundFrameLayout_topLeftRadius, radius);
        final float topRightRadius = array.getDimension(R.styleable.CodiaRoundFrameLayout_topRightRadius, radius);
        final float bottomLeftRadius = array.getDimension(R.styleable.CodiaRoundFrameLayout_bottomLeftRadius, radius);
        final float bottomRightRadius = array.getDimension(R.styleable.CodiaRoundFrameLayout_bottomRightRadius, radius);
        return CodiaRoundLayoutUtil.CornersHolder.create(topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius);
    }

}
