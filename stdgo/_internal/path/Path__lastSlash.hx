package stdgo._internal.path;
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt {
        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        return _i;
    }
