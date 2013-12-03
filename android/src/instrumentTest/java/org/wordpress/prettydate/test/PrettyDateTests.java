package org.wordpress.prettydate.test;

import android.test.InstrumentationTestCase;

import org.wordpress.prettydate.PrettyDate;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class PrettyDateTests extends InstrumentationTestCase {
    @Override
    protected void setUp() {
        PrettyDate.setContext(getInstrumentation().getTargetContext());
    }

    public void testPrettyDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ",
                Locale.US);
        String now = simpleDateFormat.format(new Date(0));
        assertEquals("just now", PrettyDate.prettyDate(now));
    }
}
