package stdgo._internal.strconv;
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if ((_i >= (_b.length) : Bool)) {
                    return true;
                };
                if (_b[(_i : stdgo.GoInt)] != (_s[(_i : stdgo.GoInt)])) {
                    return (_b[(_i : stdgo.GoInt)] < _s[(_i : stdgo.GoInt)] : Bool);
                };
            });
        };
        return false;
    }
