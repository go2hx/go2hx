package stdgo._internal.net.http;
var _http2stateName : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(5, 5, ...[for (i in 0 ... 5) ""]);
        s[0] = ("Idle" : stdgo.GoString);
        s[1] = ("Open" : stdgo.GoString);
        s[2] = ("HalfClosedLocal" : stdgo.GoString);
        s[3] = ("HalfClosedRemote" : stdgo.GoString);
        s[4] = ("Closed" : stdgo.GoString);
        s;
    };
