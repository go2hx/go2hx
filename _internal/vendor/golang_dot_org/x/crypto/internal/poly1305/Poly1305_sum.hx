package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function sum(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        var _h = _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_new_.new_(_key);
        _h.write(_m);
        _h.sum((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
