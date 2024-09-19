package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _newMACGeneric(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric {
        var _m = (new _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric);
        _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__initialize._initialize(_key, (stdgo.Go.setRef(_m._macState) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>));
        return _m?.__copy__();
    }
