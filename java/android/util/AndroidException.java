// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) nonlb 

package android.util;


public class AndroidException extends Exception {

    public AndroidException() {
    }

    public AndroidException(Exception exception) {
        super(exception);
    }

    public AndroidException(String s) {
        super(s);
    }

    public AndroidException(String s, Throwable throwable) {
        super(s, throwable);
    }
}
