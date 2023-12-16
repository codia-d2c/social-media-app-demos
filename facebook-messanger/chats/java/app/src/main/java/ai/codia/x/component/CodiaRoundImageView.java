package ai.codia.x.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;

import ai.codia.x.java.demo.R;

/**
 * Created by codia-figma
 * Generate round radius image view.
 */
public class CodiaRoundImageView extends AppCompatImageView {
    private static final String TAG = "RoundImageView";

    private int topLeftRadius = 0;
    private int topRightRadius = 0;
    private int bottomLeftRadius = 0;
    private int bottomRightRadius = 0;
    private boolean isSameRadius = false;
    private final Path path = new Path();

    public CodiaRoundImageView(Context context) {
        this(context, null);
    }

    public CodiaRoundImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CodiaRoundImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initAttrs(context, attrs, defStyleAttr);
    }

    private void initAttrs(Context context, AttributeSet attrs, int defStyleAttr) {
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.CodiaRoundImageView, defStyleAttr, 0);
        int radius = (int) ta.getDimension(R.styleable.CodiaRoundImageView_radius, 0);
        topLeftRadius = (int) ta.getDimension(R.styleable.CodiaRoundImageView_topLeftRadius, radius);
        topRightRadius = (int) ta.getDimension(R.styleable.CodiaRoundImageView_topRightRadius, radius);
        bottomRightRadius = (int) ta.getDimension(R.styleable.CodiaRoundImageView_bottomRightRadius, radius);
        bottomLeftRadius = (int) ta.getDimension(R.styleable.CodiaRoundImageView_bottomLeftRadius, radius);
        isSameRadius = topLeftRadius == topRightRadius && topLeftRadius == bottomRightRadius && topLeftRadius == bottomLeftRadius;
        ta.recycle();
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        updatePath();
    }

    private void updatePath() {
        path.reset();
        if (isSameRadius) {
            setClipToOutline(true);
            setOutlineProvider(new ViewOutlineProvider() {
                @Override
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, getWidth(), getHeight(), topLeftRadius);
                }
            });
        } else {
            setClipToOutline(false);
            setOutlineProvider(null);
            path.addRoundRect(0f, 0f, getWidth(), getBottom(), new float[]{topLeftRadius, topLeftRadius, topRightRadius, topRightRadius, bottomRightRadius, bottomRightRadius, bottomLeftRadius, bottomLeftRadius}, Path.Direction.CW);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (isSameRadius) {
            super.onDraw(canvas);
        } else {
            int c = canvas.save();
            canvas.clipPath(path);
            super.onDraw(canvas);
            canvas.restoreToCount(c);
        }
    }

}