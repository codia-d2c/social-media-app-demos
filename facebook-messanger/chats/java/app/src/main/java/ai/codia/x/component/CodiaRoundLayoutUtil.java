package ai.codia.x.component;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

/**
 * Created by codia-figma
 */
public class CodiaRoundLayoutUtil {

    private CodiaRoundLayoutUtil.CanvasRounder canvasRound;
    private final View view;

    public CodiaRoundLayoutUtil(View view) {
        this.view = view;
    }

    public void init(CodiaRoundLayoutUtil.CornersHolder holder) {
        canvasRound = CodiaRoundLayoutUtil.CanvasRounder.create(holder);
        view.setOutlineProvider(CodiaRoundLayoutUtil.RoundOutlineProvider.from(holder));
        view.setClipToOutline(true);
    }

    public void init(int radius) {
        CodiaRoundLayoutUtil.CornersHolder holder = CodiaRoundLayoutUtil.CornersHolder.create(radius);
        init(holder);
    }

    public void clipCanvas(Canvas canvas) {
        canvasRound.clipPath(canvas);
    }

    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        canvasRound.updateSize(w, h);
        view.invalidate();
    }


    /**
     * reset rect radius
     *
     * @param radius
     */
    public void updateRectRadius(float radius) {
        canvasRound.updateRadius(radius);
        view.setOutlineProvider(CodiaRoundLayoutUtil.RoundOutlineProvider.from(radius));
        view.invalidate();
    }

    public void updateRectRadius(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        canvasRound.updateRadius(topLeft, topRight, bottomRight, bottomLeft);
        view.setOutlineProvider(CodiaRoundLayoutUtil.RoundOutlineProvider.from(topLeft, topRight, bottomRight, bottomLeft));
        view.invalidate();
    }

    public static class CornersHolder {
        public final float topLeftRadius;
        public final float topRightRadius;
        public final float bottomRightRadius;
        public final float bottomLeftRadius;

        CornersHolder(float topLeft, float topRight, float bottomRight, float bottomLeft) {
            this.topLeftRadius = topLeft;
            this.topRightRadius = topRight;
            this.bottomRightRadius = bottomRight;
            this.bottomLeftRadius = bottomLeft;
        }

        public static CornersHolder create(float topLeft, float topRight, float bottomRight, float bottomLeft) {
            return new CornersHolder(topLeft, topRight, bottomRight, bottomLeft);
        }

        public static CornersHolder create(float radius) {
            return new CornersHolder(radius, radius, radius, radius);
        }
    }

    static class RoundOutlineProvider extends ViewOutlineProvider {
        final CornersHolder corner;

        RoundOutlineProvider(CornersHolder corner) {
            this.corner = corner;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            final RectF rectF = new RectF(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            final Path path = new Path();
            path.addRoundRect(rectF, new float[]{
                corner.topLeftRadius,
                corner.topLeftRadius,
                corner.topRightRadius,
                corner.topRightRadius,
                corner.bottomRightRadius,
                corner.bottomRightRadius,
                corner.bottomLeftRadius,
                corner.bottomLeftRadius,
            }, Path.Direction.CW);
            path.close();
            outline.setConvexPath(path);
        }

        static RoundOutlineProvider from(CornersHolder holder) {
            return new RoundOutlineProvider(holder);
        }

        static RoundOutlineProvider from(float radius) {
            return new RoundOutlineProvider(CornersHolder.create(radius));
        }

        static RoundOutlineProvider from(float topLeft, float topRight, float bottomRight, float bottomLeft) {
            return new RoundOutlineProvider(CornersHolder.create(topLeft, topRight, bottomRight, bottomLeft));
        }
    }

    abstract static class CanvasRounder {
        abstract void clipPath(Canvas canvas);

        abstract void updateSize(int w, int h);

        abstract void updateRadius(float radius);

        abstract void updateRadius(float topLeft, float topRight, float bottomRight, float bottomLeft);

        public static CanvasRounder create(CornersHolder corner) {
            return new RealCanvasRounder(corner);
        }
    }

    static class RealCanvasRounder extends CanvasRounder {
        private final Path path = new Path();
        private CornersHolder corner;
        private final RectF rectF = new RectF(0f, 0f, 0f, 0f);

        RealCanvasRounder(CornersHolder corner) {
            this.corner = corner;
        }

        void clipPath(Canvas canvas) {
            canvas.clipPath(path);
        }

        void updateSize(int w, int h) {
            rectF.set(0, 0, w, h);
            updateRadius();
        }

        @Override
        void updateRadius(float radius) {
            corner = CornersHolder.create(radius);
            updateRadius();
        }

        @Override
        void updateRadius(float topLeft, float topRight, float bottomRight, float bottomLeft) {
            corner = CornersHolder.create(topLeft, topRight, bottomRight, bottomLeft);
            updateRadius();
        }

        private void updateRadius() {
            path.reset();
            path.addRoundRect(rectF, new float[]{
                    corner.topLeftRadius,
                    corner.topLeftRadius,
                    corner.topRightRadius,
                    corner.topRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomRightRadius,
                    corner.bottomLeftRadius,
                    corner.bottomLeftRadius,
            }, Path.Direction.CW);
            path.close();
        }
    }
}
