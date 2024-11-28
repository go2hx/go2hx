package stdgo._internal.net.http;
function _scanETag(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _etag = ("" : stdgo.GoString), _remain = ("" : stdgo.GoString);
        _s = stdgo._internal.net.textproto.Textproto_trimString.trimString(_s?.__copy__())?.__copy__();
        var _start = (0 : stdgo.GoInt);
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_s?.__copy__(), ("W/" : stdgo.GoString))) {
            _start = (2 : stdgo.GoInt);
        };
        if (((((_s.__slice__(_start) : stdgo.GoString).length) < (2 : stdgo.GoInt) : Bool) || (_s[(_start : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__() };
                _etag = __tmp__._0;
                _remain = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _i = (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_c == ((33 : stdgo.GoUInt8)) || ((_c >= (35 : stdgo.GoUInt8) : Bool) && (_c <= (126 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (_c >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {} else if (_c == ((34 : stdgo.GoUInt8))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_s.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _1 : (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                        _etag = __tmp__._0;
                        _remain = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo.Go.str().__copy__(), _1 : stdgo.Go.str().__copy__() };
                        _etag = __tmp__._0;
                        _remain = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__() };
            _etag = __tmp__._0;
            _remain = __tmp__._1;
            __tmp__;
        };
    }
