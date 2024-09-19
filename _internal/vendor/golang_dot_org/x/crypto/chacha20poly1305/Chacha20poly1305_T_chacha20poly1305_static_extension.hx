package _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305.T_chacha20poly1305_asInterface) class T_chacha20poly1305_static_extension {
    @:keep
    static public function _open( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        return _c._openGeneric(_dst, _nonce, _ciphertext, _additionalData);
    }
    @:keep
    static public function _seal( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        return _c._sealGeneric(_dst, _nonce, _plaintext, _additionalData);
    }
    @:keep
    static public function _openGeneric( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        var _tag = (_ciphertext.__slice__(((_ciphertext.length) - (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _ciphertext = (_ciphertext.__slice__(0, ((_ciphertext.length) - (16 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _polyKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        var __tmp__ = _internal.golang_dot_org.x.crypto.chacha20.Chacha20_newUnauthenticatedCipher.newUnauthenticatedCipher((_c._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nonce), _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        _s.xorkeyStream((_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _s.setCounter((1u32 : stdgo.GoUInt32));
        var _p = _internal.golang_dot_org.x.crypto.internal.poly1305.Poly1305_new_.new_((stdgo.Go.setRef(_polyKey) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeWithPadding._writeWithPadding(_p, _additionalData);
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeWithPadding._writeWithPadding(_p, _ciphertext);
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeUint64._writeUint64(_p, (_additionalData.length));
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeUint64._writeUint64(_p, (_ciphertext.length));
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__sliceForAppend._sliceForAppend(_dst, (_ciphertext.length)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        if (_internal.golang_dot_org.x.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap(_out, _ciphertext)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: invalid buffer overlap" : stdgo.GoString));
        };
        if (!_p.verify(_tag)) {
            for (_i => _ in _out) {
                _out[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__errOpen._errOpen };
        };
        _s.xorkeyStream(_out, _ciphertext);
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _sealGeneric( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__sliceForAppend._sliceForAppend(_dst, ((_plaintext.length) + (16 : stdgo.GoInt) : stdgo.GoInt)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        var __0 = (_out.__slice__(0, (_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_out.__slice__((_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>);
var _tag = __1, _ciphertext = __0;
        if (_internal.golang_dot_org.x.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap(_out, _plaintext)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: invalid buffer overlap" : stdgo.GoString));
        };
        var _polyKey:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        var __tmp__ = _internal.golang_dot_org.x.crypto.chacha20.Chacha20_newUnauthenticatedCipher.newUnauthenticatedCipher((_c._key.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nonce), _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        _s.xorkeyStream((_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_polyKey.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _s.setCounter((1u32 : stdgo.GoUInt32));
        _s.xorkeyStream(_ciphertext, _plaintext);
        var _p = _internal.golang_dot_org.x.crypto.internal.poly1305.Poly1305_new_.new_((stdgo.Go.setRef(_polyKey) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeWithPadding._writeWithPadding(_p, _additionalData);
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeWithPadding._writeWithPadding(_p, _ciphertext);
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeUint64._writeUint64(_p, (_additionalData.length));
        _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__writeUint64._writeUint64(_p, (_plaintext.length));
        _p.sum((_tag.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        return _ret;
    }
    @:keep
    static public function open( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        if ((_nonce.length) != ((12 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("chacha20poly1305: bad nonce length passed to Open" : stdgo.GoString));
        };
        if (((_ciphertext.length) < (16 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305__errOpen._errOpen };
        };
        if (((_ciphertext.length : stdgo.GoUInt64) > (274877906896i64 : stdgo.GoUInt64) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: ciphertext too large" : stdgo.GoString));
        };
        return _c._open(_dst, _nonce, _ciphertext, _additionalData);
    }
    @:keep
    static public function seal( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        if ((_nonce.length) != ((12 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("chacha20poly1305: bad nonce length passed to Seal" : stdgo.GoString));
        };
        if (((_plaintext.length : stdgo.GoUInt64) > (274877906880i64 : stdgo.GoUInt64) : Bool)) {
            throw stdgo.Go.toInterface(("chacha20poly1305: plaintext too large" : stdgo.GoString));
        };
        return _c._seal(_dst, _nonce, _plaintext, _additionalData);
    }
    @:keep
    static public function overhead( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        return (16 : stdgo.GoInt);
    }
    @:keep
    static public function nonceSize( _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_T_chacha20poly1305.T_chacha20poly1305> = _c;
        return (12 : stdgo.GoInt);
    }
}
