package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
function verify(_mac:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Bool {
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_sum.sum((stdgo.Go.setRef(_tmp) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _m, _key);
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare((_tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) == ((1 : stdgo.GoInt));
    }
