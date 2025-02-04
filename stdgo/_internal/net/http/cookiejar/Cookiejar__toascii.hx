package stdgo._internal.net.http.cookiejar;
function _toASCII(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (stdgo._internal.net.http.internal.ascii.Ascii_is_.is_(_s?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _labels = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), ("." : stdgo.GoString));
        for (_i => _label in _labels) {
            if (!stdgo._internal.net.http.internal.ascii.Ascii_is_.is_(_label?.__copy__())) {
                var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__encode._encode(("xn--" : stdgo.GoString), _label?.__copy__()), _a:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
                _labels[(_i : stdgo.GoInt)] = _a?.__copy__();
            };
        };
        return { _0 : stdgo._internal.strings.Strings_join.join(_labels, ("." : stdgo.GoString))?.__copy__(), _1 : (null : stdgo.Error) };
    }
