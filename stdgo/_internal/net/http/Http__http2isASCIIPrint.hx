package stdgo._internal.net.http;
function _http2isASCIIPrint(_s:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (((_s[(_i : stdgo.GoInt)] < (32 : stdgo.GoUInt8) : Bool) || (_s[(_i : stdgo.GoInt)] > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return false;
                };
            });
        };
        return true;
    }
