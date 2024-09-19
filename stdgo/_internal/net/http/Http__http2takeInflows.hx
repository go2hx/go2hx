package stdgo._internal.net.http;
function _http2takeInflows(_f1:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _f2:stdgo.Ref<stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow>, _n:stdgo.GoUInt32):Bool {
        if (((_n > (_f1._avail : stdgo.GoUInt32) : Bool) || (_n > (_f2._avail : stdgo.GoUInt32) : Bool) : Bool)) {
            return false;
        };
        _f1._avail = (_f1._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        _f2._avail = (_f2._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        return true;
    }
