package ai.codia.x.java.demo;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class MainActivity extends BaseMainActivity {

    @Override
    protected void onViewCreated() {
        
    }

    private int dp2px(double dpValue) {
        float scale = this.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale);
    }
}
