package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function _sumGeneric(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _msg:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _h = (_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__newMACGeneric._newMACGeneric(_key)?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric);
        _h.write(_msg);
        _h.sum(_out);
    }
