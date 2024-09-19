package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function new_(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC> {
        var _m = (stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>);
        _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__initialize._initialize(_key, (stdgo.Go.setRef(_m._mac._macGeneric._macState) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>));
        return _m;
    }
