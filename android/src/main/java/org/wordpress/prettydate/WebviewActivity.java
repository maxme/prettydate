package org.wordpress.prettydate;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class WebviewActivity  extends Activity {
    private WebView mWebView;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mWebView = new WebView(this);
    }

    public WebView getmWebView() {
        return mWebView;
    }
}
