package stdgo._internal.net.http.cgi;
function _envMap(_env:stdgo.Slice<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L41"
        for (__0 => _kv in _env) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L42"
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_kv?.__copy__(), ("=" : stdgo.GoString)), _k:stdgo.GoString = __tmp__._0, _v:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    _m[_k] = _v?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cgi/child.go#L46"
        return _m;
    }
