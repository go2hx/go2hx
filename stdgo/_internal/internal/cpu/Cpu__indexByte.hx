package stdgo._internal.internal.cpu;
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
                _i++;
            };
        };
        return (-1 : stdgo.GoInt);
    }
