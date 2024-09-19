package stdgo._internal.net.url;
function _stringContainsCTLByte(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b == (127 : stdgo.GoUInt8)) : Bool)) {
                    return true;
                };
            });
        };
        return false;
    }
