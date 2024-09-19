package stdgo._internal.net.http;
function parseHTTPVersion(_vers:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _major = (0 : stdgo.GoInt), _minor = (0 : stdgo.GoInt), _ok = false;
        {
            final __value__ = _vers;
            if (__value__ == (("HTTP/1.1" : stdgo.GoString))) {
                return { _0 : (1 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : true };
            } else if (__value__ == (("HTTP/1.0" : stdgo.GoString))) {
                return { _0 : (1 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : true };
            };
        };
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_vers?.__copy__(), ("HTTP/" : stdgo.GoString))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        if ((_vers.length) != ((("HTTP/X.Y" : stdgo.GoString).length))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        if (_vers[(6 : stdgo.GoInt)] != ((46 : stdgo.GoUInt8))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint((_vers.__slice__((5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _maj:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint((_vers.__slice__((7 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _min:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        return { _0 : (_maj : stdgo.GoInt), _1 : (_min : stdgo.GoInt), _2 : true };
    }
