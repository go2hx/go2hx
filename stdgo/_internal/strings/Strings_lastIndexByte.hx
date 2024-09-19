package stdgo._internal.strings;
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
