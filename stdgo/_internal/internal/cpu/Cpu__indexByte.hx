package stdgo._internal.internal.cpu;
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
