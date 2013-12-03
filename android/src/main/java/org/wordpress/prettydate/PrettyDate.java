package org.wordpress.prettydate;

import android.content.res.AssetFileDescriptor;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

import java.io.FileReader;

public class PrettyDate {
    private static android.content.Context sContext;

    public static void setContext(android.content.Context context) {
        sContext = context;
    }

    private static String prettyDate(String time) {
        String res = null;
        Context cx = Context.enter();
        cx.setOptimizationLevel(-1);
        try {
            AssetFileDescriptor descriptor = sContext.getAssets().openFd("pretty.js");
            FileReader reader = new FileReader(descriptor.getFileDescriptor());
            Scriptable scope = cx.initStandardObjects();
            ScriptableObject.putProperty(scope, "time", Context.javaToJS(null, scope));
            res = (String) cx.evaluateReader(scope, reader, "prettyDate:", 1, null);
        } catch (Exception e) {
            //
        } finally {
            Context.exit();
        }
        return res;
    }
}
