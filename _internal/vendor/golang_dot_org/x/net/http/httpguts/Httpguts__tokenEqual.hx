package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function _tokenEqual(_t1:stdgo.GoString, _t2:stdgo.GoString):Bool {
        if ((_t1.length) != ((_t2.length))) {
            return false;
        };
        for (_i => _b in _t1) {
            if ((_b >= (128 : stdgo.GoInt32) : Bool)) {
                return false;
            };
            if (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__lowerASCII._lowerASCII((_b : stdgo.GoUInt8)) != (_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__lowerASCII._lowerASCII(_t2[(_i : stdgo.GoInt)]))) {
                return false;
            };
        };
        return true;
    }
