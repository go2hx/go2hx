package stdgo._internal.strings;
var _asciiSpace : stdgo.GoArray<stdgo.GoUInt8> = {
        var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) 0]);
        s[9] = (1 : stdgo.GoUInt8);
        s[10] = (1 : stdgo.GoUInt8);
        s[11] = (1 : stdgo.GoUInt8);
        s[12] = (1 : stdgo.GoUInt8);
        s[13] = (1 : stdgo.GoUInt8);
        s[32] = (1 : stdgo.GoUInt8);
        s;
    };
