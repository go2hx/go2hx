package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305.T_xchacha20poly1305_asInterface) class T_xchacha20poly1305_static_extension {
    @:keep
    static public function open( _x:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305> = _x;
        if ((_nonce.length) != ((24 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("chacha20poly1305: bad nonce length passed to Open" : stdgo.GoString));
        };
        if (((_ciphertext.length) < (16 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__errOpen._errOpen };
        };
        if (((_ciphertext.length : stdgo.GoUInt64) > (274877906896i64 : stdgo.GoUInt64) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: ciphertext too large" : stdgo.GoString));
        };
        var _c = (stdgo.Go.setRef(({} : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>);
        var __tmp__ = _internal.golang_dot_org.x.crypto.chacha20.Chacha20_hchaCha20.hchaCha20((_x._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _hKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        stdgo.Go.copySlice((_c._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _hKey);
        var _cNonce = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice((_cNonce.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _c._open(_dst, (_cNonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _additionalData);
    }
    @:keep
    static public function seal( _x:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305> = _x;
        if ((_nonce.length) != ((24 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("chacha20poly1305: bad nonce length passed to Seal" : stdgo.GoString));
        };
        if (((_plaintext.length : stdgo.GoUInt64) > (274877906880i64 : stdgo.GoUInt64) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: plaintext too large" : stdgo.GoString));
        };
        var _c = (stdgo.Go.setRef(({} : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>);
        var __tmp__ = _internal.golang_dot_org.x.crypto.chacha20.Chacha20_hchaCha20.hchaCha20((_x._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _hKey:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        stdgo.Go.copySlice((_c._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _hKey);
        var _cNonce = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice((_cNonce.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _c._seal(_dst, (_cNonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _plaintext, _additionalData);
    }
    @:keep
    static public function overhead( _:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305> = _;
        return (16 : stdgo.GoInt);
    }
    @:keep
    static public function nonceSize( _:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_xchacha20poly1305.T_xchacha20poly1305> = _;
        return (24 : stdgo.GoInt);
    }
}
