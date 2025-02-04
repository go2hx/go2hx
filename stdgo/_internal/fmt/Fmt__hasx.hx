package stdgo._internal.fmt;
function _hasX(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (((_s[(_i : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
                _i++;
            };
        };
        return false;
    }
