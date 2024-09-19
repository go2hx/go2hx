package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function _isCTL(_b:stdgo.GoUInt8):Bool {
        {};
        return ((_b < (32 : stdgo.GoUInt8) : Bool) || (_b == (127 : stdgo.GoUInt8)) : Bool);
    }
