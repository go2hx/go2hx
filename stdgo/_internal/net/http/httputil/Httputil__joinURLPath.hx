package stdgo._internal.net.http.httputil;
function _joinURLPath(_a:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _b:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _path = ("" : stdgo.GoString), _rawpath = ("" : stdgo.GoString);
        if (((_a.rawPath == stdgo.Go.str()) && (_b.rawPath == stdgo.Go.str()) : Bool)) {
            return { _0 : stdgo._internal.net.http.httputil.Httputil__singleJoiningSlash._singleJoiningSlash(_a.path?.__copy__(), _b.path?.__copy__())?.__copy__(), _1 : stdgo.Go.str()?.__copy__() };
        };
        var _apath = (_a.escapedPath()?.__copy__() : stdgo.GoString);
        var _bpath = (_b.escapedPath()?.__copy__() : stdgo.GoString);
        var _aslash = (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_apath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        var _bslash = (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_bpath?.__copy__(), ("/" : stdgo.GoString)) : Bool);
        if ((_aslash && _bslash : Bool)) {
            return { _0 : (_a.path + (_b.path.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + (_bpath.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() };
        } else if ((!_aslash && !_bslash : Bool)) {
            return { _0 : ((_a.path + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _b.path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : ((_apath + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
        };
        return { _0 : (_a.path + _b.path?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (_apath + _bpath?.__copy__() : stdgo.GoString)?.__copy__() };
    }
