package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305.T_macGeneric_asInterface) class T_macGeneric_static_extension {
    @:keep
    static public function sum( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric>, _out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric> = _h;
        var _state = (_h._macState?.__copy__() : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState);
        if ((_h._offset > (0 : stdgo.GoInt) : Bool)) {
            _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__updateGeneric._updateGeneric((stdgo.Go.setRef(_state) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>), (_h._buffer.__slice__(0, _h._offset) : stdgo.Slice<stdgo.GoUInt8>));
        };
        _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__finalize._finalize(_out, (stdgo.Go.setRef(_state._h) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>), (stdgo.Go.setRef(_state._s) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>));
    }
    @:keep
    static public function write( _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric.T_macGeneric> = _h;
        var _nn = (_p.length : stdgo.GoInt);
        if ((_h._offset > (0 : stdgo.GoInt) : Bool)) {
            var _n = (stdgo.Go.copySlice((_h._buffer.__slice__(_h._offset) : stdgo.Slice<stdgo.GoUInt8>), _p) : stdgo.GoInt);
            if (((_h._offset + _n : stdgo.GoInt) < (16 : stdgo.GoInt) : Bool)) {
                _h._offset = (_h._offset + (_n) : stdgo.GoInt);
                return { _0 : _nn, _1 : (null : stdgo.Error) };
            };
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _h._offset = (0 : stdgo.GoInt);
            _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__updateGeneric._updateGeneric((stdgo.Go.setRef(_h._macState) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>), (_h._buffer.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
        {
            var _n = ((_p.length) - (((_p.length) % (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305__updateGeneric._updateGeneric((stdgo.Go.setRef(_h._macState) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState>), (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        if (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            _h._offset = (_h._offset + (stdgo.Go.copySlice((_h._buffer.__slice__(_h._offset) : stdgo.Slice<stdgo.GoUInt8>), _p)) : stdgo.GoInt);
        };
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
}
