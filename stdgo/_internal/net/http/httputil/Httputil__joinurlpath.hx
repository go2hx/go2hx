package stdgo._internal.net.http.httputil;
function _joinURLPath(_a:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _b:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _path = ("" : stdgo.GoString), _rawpath = ("" : stdgo.GoString);
        if ((((@:checkr _a ?? throw "null pointer dereference").rawPath == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _b ?? throw "null pointer dereference").rawPath == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo._internal.net.http.httputil.Httputil__singlejoiningslash._singleJoiningSlash((@:checkr _a ?? throw "null pointer dereference").path?.__copy__(), (@:checkr _b ?? throw "null pointer dereference").path?.__copy__())?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        };
        var _apath = (@:check2r _a.escapedPath()?.__copy__() : stdgo.GoString);
        var _bpath = (@:check2r _b.escapedPath()?.__copy__() : stdgo.GoString);
        var _aslash = (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_apath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        var _bslash = (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_bpath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        if ((_aslash && _bslash : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ((@:checkr _a ?? throw "null pointer dereference").path + ((@:checkr _b ?? throw "null pointer dereference").path.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + (_bpath.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        } else if ((!_aslash && !_bslash : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (((@:checkr _a ?? throw "null pointer dereference").path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _b ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : ((_apath + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
                _path = __tmp__._0;
                _rawpath = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : ((@:checkr _a ?? throw "null pointer dereference").path + (@:checkr _b ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
            _path = __tmp__._0;
            _rawpath = __tmp__._1;
            __tmp__;
        };
    }
