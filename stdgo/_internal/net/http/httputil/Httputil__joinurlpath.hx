package stdgo._internal.net.http.httputil;
function _joinURLPath(_a:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _b:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _path = ("" : stdgo.GoString), _rawpath = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L222"
        if ((((@:checkr _a ?? throw "null pointer dereference").rawPath == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _b ?? throw "null pointer dereference").rawPath == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L223"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.httputil.Httputil__singlejoiningslash._singleJoiningSlash((@:checkr _a ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _b ?? throw "null pointer dereference").path?.__copy__())?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        };
        var _apath = (_a.escapedPath()?.__copy__() : stdgo.GoString);
        var _bpath = (_b.escapedPath()?.__copy__() : stdgo.GoString);
        var _aslash = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_apath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        var _bslash = (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_bpath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L233"
        if ((_aslash && _bslash : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L235"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ((@:checkr _a ?? throw "null pointer dereference").path + ((@:checkr _b ?? throw "null pointer dereference").path.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + (_bpath.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        } else if ((!_aslash && !_bslash : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L237"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (((@:checkr _a ?? throw "null pointer dereference").path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _b ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : ((_apath + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L239"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ((@:checkr _a ?? throw "null pointer dereference").path + (@:checkr _b ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
            _path = __tmp__._0;
            _rawpath = __tmp__._1;
            __tmp__;
        };
    }
