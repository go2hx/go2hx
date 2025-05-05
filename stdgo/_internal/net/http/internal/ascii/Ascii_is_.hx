package stdgo._internal.net.http.internal.ascii;
function is_(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L47"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L48"
                if ((_s[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L49"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L52"
        return true;
    }
