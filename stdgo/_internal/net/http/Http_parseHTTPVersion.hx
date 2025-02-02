package stdgo._internal.net.http;
function parseHTTPVersion(_vers:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _major = (0 : stdgo.GoInt), _minor = (0 : stdgo.GoInt), _ok = false;
        {
            final __value__ = _vers;
            if (__value__ == (("HTTP/1.1" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (1 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : true };
                    _major = __tmp__._0;
                    _minor = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            } else if (__value__ == (("HTTP/1.0" : stdgo.GoString))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (1 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : true };
                    _major = __tmp__._0;
                    _minor = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
        };
        if (!stdgo._internal.net.http.Http__strings._strings.hasPrefix(_vers?.__copy__(), ("HTTP/" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        if ((_vers.length) != (((("HTTP/X.Y" : stdgo.GoString) : stdgo.GoString).length))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        if (_vers[(6 : stdgo.GoInt)] != ((46 : stdgo.GoUInt8))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__strconv._strconv.parseUint((_vers.__slice__((5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _maj:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__strconv._strconv.parseUint((_vers.__slice__((7 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _min:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (_maj : stdgo.GoInt), _1 : (_min : stdgo.GoInt), _2 : true };
            _major = __tmp__._0;
            _minor = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
