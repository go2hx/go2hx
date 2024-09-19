package stdgo._internal.net.http;
function _parseBasicAuth(_auth:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        {};
        if ((((_auth.length) < (("Basic " : stdgo.GoString).length) : Bool) || !stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold((_auth.__slice__(0, (("Basic " : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), ("Basic " : stdgo.GoString)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var __tmp__ = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString((_auth.__slice__((("Basic " : stdgo.GoString).length)) : stdgo.GoString)?.__copy__()), _c:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        var _cs = ((_c : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_cs?.__copy__(), (":" : stdgo.GoString));
            _username = __tmp__._0?.__copy__();
            _password = __tmp__._1?.__copy__();
            _ok = __tmp__._2;
        };
        if (!_ok) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
        };
        return { _0 : _username?.__copy__(), _1 : _password?.__copy__(), _2 : true };
    }
