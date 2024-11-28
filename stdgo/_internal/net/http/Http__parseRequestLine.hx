package stdgo._internal.net.http;
function _parseRequestLine(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } {
        var _method = ("" : stdgo.GoString), _requestURI = ("" : stdgo.GoString), _proto = ("" : stdgo.GoString), _ok = false;
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _method:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _ok1:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), (" " : stdgo.GoString)), _requestURI:stdgo.GoString = __tmp__._0, _proto:stdgo.GoString = __tmp__._1, _ok2:Bool = __tmp__._2;
        if ((!_ok1 || !_ok2 : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : stdgo.Go.str()?.__copy__(), _3 : false };
                _method = __tmp__._0;
                _requestURI = __tmp__._1;
                _proto = __tmp__._2;
                _ok = __tmp__._3;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } = { _0 : _method?.__copy__(), _1 : _requestURI?.__copy__(), _2 : _proto?.__copy__(), _3 : true };
            _method = __tmp__._0;
            _requestURI = __tmp__._1;
            _proto = __tmp__._2;
            _ok = __tmp__._3;
            __tmp__;
        };
    }
