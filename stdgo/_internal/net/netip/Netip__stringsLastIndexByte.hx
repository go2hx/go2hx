package stdgo._internal.net.netip;
function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s[(_i : stdgo.GoInt)] == (_b)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }