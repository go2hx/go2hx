package stdgo._internal.net.http.internal.ascii;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        if ((_s.length) != ((_t.length))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_s[(_i : stdgo.GoInt)]) != (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_t[(_i : stdgo.GoInt)]))) {
                    return false;
                };
            });
        };
        return true;
    }
