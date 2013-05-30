package com.skplanet.gluon;

public class ControllerUtil {
    public static String makePostinoUrl(String server, String service, String begin, String end) {
        String urlFormat = server + service + "?server=%s&begin=%s&end=%s";
        String url = String.format(urlFormat, server, begin, end);
        url = url.replace(" ", "%20");
        return url;
    }
    public static String makePostinoUrl(String url) {
        return url.replace(" ", "%20");
    }
}
