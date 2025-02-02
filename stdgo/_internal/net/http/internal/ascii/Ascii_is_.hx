package stdgo._internal.net.http.internal.ascii;
function is_(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if ((_s[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
