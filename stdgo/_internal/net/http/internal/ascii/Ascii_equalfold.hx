package stdgo._internal.net.http.internal.ascii;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L15"
        if ((_s.length) != ((_t.length))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L16"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L18"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L19"
                if (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_s[(_i : stdgo.GoInt)]) != (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_t[(_i : stdgo.GoInt)]))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L20"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/ascii/print.go#L23"
        return true;
    }
