package stdgo._internal.html.template;
var _delimEnds : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(4, 4, ...[for (i in 0 ... 4) ""]);
        s[1] = ("\"" : stdgo.GoString);
        s[2] = ("\'" : stdgo.GoString);
        s[3] = (" \t\n\x0C\r>" : stdgo.GoString);
        s;
    };
