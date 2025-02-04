package stdgo._internal.net.http.internal.ascii;
function toLower(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _lower = ("" : stdgo.GoString), _ok = false;
        if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_s?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _lower = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo._internal.strings.Strings_tolower.toLower(_s?.__copy__())?.__copy__(), _1 : true };
            _lower = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
