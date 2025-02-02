package stdgo._internal.net.http.internal.ascii;
function isPrint(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (((_s[(_i : stdgo.GoInt)] < (32 : stdgo.GoUInt8) : Bool) || (_s[(_i : stdgo.GoInt)] > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
