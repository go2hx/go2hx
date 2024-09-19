package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_cthWrapper_asInterface) class T_cthWrapper_static_extension {
    @:keep
    static public function sum( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper> = _c;
        return _c._h.constantTimeSum(_b);
    }
    @:keep
    static public function write( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper> = _c;
        return _c._h.write(_p);
    }
    @:keep
    static public function reset( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper> = _c;
        _c._h.reset();
    }
    @:keep
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper> = _c;
        return _c._h.blockSize();
    }
    @:keep
    static public function size( _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper> = _c;
        return _c._h.size();
    }
}
