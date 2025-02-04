package stdgo._internal.net.url;
function _parseQuery(_m:stdgo._internal.net.url.Url_values.Values, _query:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        while (_query != ((stdgo.Go.str() : stdgo.GoString))) {
            var _key:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_query?.__copy__(), ("&" : stdgo.GoString));
                _key = @:tmpset0 __tmp__._0?.__copy__();
                _query = @:tmpset0 __tmp__._1?.__copy__();
            };
            if (stdgo._internal.strings.Strings_contains.contains(_key?.__copy__(), (";" : stdgo.GoString))) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid semicolon separator in query" : stdgo.GoString));
                continue;
            };
            if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_key?.__copy__(), ("=" : stdgo.GoString)), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
            var __tmp__ = stdgo._internal.net.url.Url_queryunescape.queryUnescape(_key?.__copy__()), _key:stdgo.GoString = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                if (_err == null) {
                    _err = _err1;
                };
                continue;
            };
            {
                var __tmp__ = stdgo._internal.net.url.Url_queryunescape.queryUnescape(_value?.__copy__());
                _value = @:tmpset0 __tmp__._0?.__copy__();
                _err1 = @:tmpset0 __tmp__._1;
            };
            if (_err1 != null) {
                if (_err == null) {
                    _err = _err1;
                };
                continue;
            };
            _m[_key] = ((_m[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
        };
        return _err;
    }
