package stdgo._internal.net.http;
function _http2takeInflows(_f1:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _f2:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _n:stdgo.GoUInt32):Bool {
        if (((_n > ((@:checkr _f1 ?? throw "null pointer dereference")._avail : stdgo.GoUInt32) : Bool) || (_n > ((@:checkr _f2 ?? throw "null pointer dereference")._avail : stdgo.GoUInt32) : Bool) : Bool)) {
            return false;
        };
        (@:checkr _f1 ?? throw "null pointer dereference")._avail = ((@:checkr _f1 ?? throw "null pointer dereference")._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        (@:checkr _f2 ?? throw "null pointer dereference")._avail = ((@:checkr _f2 ?? throw "null pointer dereference")._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        return true;
    }
