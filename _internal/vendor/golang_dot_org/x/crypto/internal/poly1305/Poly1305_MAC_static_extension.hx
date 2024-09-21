package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305.MAC_asInterface) class MAC_static_extension {
    @:keep
    static public function verify( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>, _expected:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC> = _h;
        var _mac:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        _h._mac.sum((stdgo.Go.setRef(_mac) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _h._finalized = true;
        return stdgo._internal.crypto.subtle.Subtle_constantTimeCompare.constantTimeCompare(_expected, (_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) == ((1 : stdgo.GoInt));
    }
    @:keep
    static public function sum( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC> = _h;
        var _mac:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
        _h._mac.sum((stdgo.Go.setRef(_mac) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _h._finalized = true;
        return (_b.__append__(...((_mac.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function write( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_h._finalized) {
            throw stdgo.Go.toInterface(("poly1305: write to MAC after Sum or Verify" : stdgo.GoString));
        };
        return _h._mac.write(_p);
    }
    @:keep
    static public function size( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_MAC.MAC> = _h;
        return (16 : stdgo.GoInt);
    }
}
