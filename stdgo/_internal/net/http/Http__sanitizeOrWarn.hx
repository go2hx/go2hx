package stdgo._internal.net.http;
function _sanitizeOrWarn(_fieldName:stdgo.GoString, _valid:stdgo.GoUInt8 -> Bool, _v:stdgo.GoString):stdgo.GoString {
        var _ok = (true : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_v.length) : Bool), _i++, {
                if (_valid(_v[(_i : stdgo.GoInt)])) {
                    continue;
                };
                stdgo._internal.log.Log_printf.printf(("net/http: invalid byte %q in %s; dropping invalid bytes" : stdgo.GoString), stdgo.Go.toInterface(_v[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_fieldName));
                _ok = false;
                break;
            });
        };
        if (_ok) {
            return _v?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_v.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_v.length) : Bool), _i++, {
                {
                    var _b = (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_valid(_b)) {
                        _buf = (_buf.__append__(_b));
                    };
                };
            });
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
