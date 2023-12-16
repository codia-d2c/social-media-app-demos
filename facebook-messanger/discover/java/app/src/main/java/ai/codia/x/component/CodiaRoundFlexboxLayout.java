package ai.codia.x.component;

import ai.codia.x.component.CodiaRoundLayoutUtil.CornersHolder;
import ai.codia.x.java.demo.R;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.google.android.flexbox.FlexboxLayout;

public final class CodiaRoundFlexboxLayout extends FlexboxLayout {
    private final CodiaRoundLayoutUtil roundLayoutUtil;

    public CodiaRoundFlexboxLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.roundLayoutUtil = new CodiaRoundLayoutUtil((View) this);
        TypedArray array = context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundFlexboxLayout, 0, 0);
        this.roundLayoutUtil.init(this.getCornerRadius(array));
        array.recycle();
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.roundLayoutUtil.onSizeChanged(w, h, oldw, oldh);
    }

    public void draw(@NonNull Canvas canvas) {
        int checkpoint = canvas.save();

        try {
            this.roundLayoutUtil.clipCanvas(canvas);
            super.draw(canvas);
        } finally {
            canvas.restoreToCount(checkpoint);
        }
    }

    protected void dispatchDraw(@NonNull Canvas canvas) {
        int checkpoint = canvas.save();
        try {
            this.roundLayoutUtil.clipCanvas(canvas);
            super.dispatchDraw(canvas);
        } finally {
            canvas.restoreToCount(checkpoint);
        }
    }

    public final void updateRectRadius(float radius) {
        this.roundLayoutUtil.updateRectRadius(radius);
    }

    public final void updateRectRadius(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        this.roundLayoutUtil.updateRectRadius(topLeft, topRight, bottomRight, bottomLeft);
    }

    private final CodiaRoundLayoutUtil.CornersHolder getCornerRadius(TypedArray array) {
        float radius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_radius, 0.0F);
        float topLeftRadius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_topLeftRadius, radius);
        float topRightRadius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_topRightRadius, radius);
        float bottomLeftRadius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_bottomRightRadius, radius);
        float bottomRightRadius = array.getDimension(R.styleable.CodiaRoundFlexboxLayout_bottomLeftRadius, radius);
        return CornersHolder.create(topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius);
    }
}