package stdgo._internal.net.url;
function _parseQuery(_m:stdgo._internal.net.url.Url_values.Values, _query:stdgo.GoString):stdgo.Error {
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L933"
        while (_query != ((stdgo.Go.str() : stdgo.GoString))) {
            var _key:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_query?.__copy__(), ("&" : stdgo.GoString));
                _key = @:tmpset0 __tmp__._0?.__copy__();
                _query = @:tmpset0 __tmp__._1?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L936"
            if (stdgo._internal.strings.Strings_contains.contains(_key?.__copy__(), (";" : stdgo.GoString))) {
                _err = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid semicolon separator in query" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L938"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L940"
            if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L941"
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_key?.__copy__(), ("=" : stdgo.GoString)), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
            var __tmp__ = stdgo._internal.net.url.Url_queryunescape.queryUnescape(_key?.__copy__()), _key:stdgo.GoString = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L945"
            if (_err1 != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L946"
                if (_err == null) {
                    _err = _err1;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L949"
                continue;
            };
            {
                var __tmp__ = stdgo._internal.net.url.Url_queryunescape.queryUnescape(_value?.__copy__());
                _value = @:tmpset0 __tmp__._0?.__copy__();
                _err1 = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L952"
            if (_err1 != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L953"
                if (_err == null) {
                    _err = _err1;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L956"
                continue;
            };
            _m[_key] = ((_m[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L960"
        return _err;
    }
