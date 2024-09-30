package stdgo._internal.mime.multipart;
function _matchAfterPrefix(_buf:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.Slice<stdgo.GoUInt8>, _readErr:stdgo.Error):stdgo.GoInt {
        if ((_buf.length) == ((_prefix.length))) {
            if (_readErr != null) {
                return (1 : stdgo.GoInt);
            };
            return (0 : stdgo.GoInt);
        };
        var _c = (_buf[(_prefix.length : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((((_c == ((32 : stdgo.GoUInt8)) || _c == ((9 : stdgo.GoUInt8)) : Bool) || _c == ((13 : stdgo.GoUInt8)) : Bool) || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
            return (1 : stdgo.GoInt);
        };
        if (_c == ((45 : stdgo.GoUInt8))) {
            if ((_buf.length) == (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                if (_readErr != null) {
                    return (-1 : stdgo.GoInt);
                };
                return (0 : stdgo.GoInt);
            };
            if (_buf[((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
                return (1 : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
