package stdgo._internal.net.url;
function _stringContainsCTLByte(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1247"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1249"
                if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b == (127 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1250"
                    return true;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1253"
        return false;
    }
