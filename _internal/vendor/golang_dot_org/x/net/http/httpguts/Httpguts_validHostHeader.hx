package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function validHostHeader(_h:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_h.length) : Bool), _i++, {
                if (!_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__validHostByte._validHostByte[(_h[(_i : stdgo.GoInt)] : stdgo.GoInt)]) {
                    return false;
                };
            });
        };
        return true;
    }
