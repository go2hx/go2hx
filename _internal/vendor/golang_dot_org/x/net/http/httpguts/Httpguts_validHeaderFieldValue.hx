package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function validHeaderFieldValue(_v:stdgo.GoString):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_v.length) : Bool), _i++, {
                var _b = (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__isCTL._isCTL(_b) && !_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__isLWS._isLWS(_b) : Bool)) {
                    return false;
                };
            });
        };
        return true;
    }
