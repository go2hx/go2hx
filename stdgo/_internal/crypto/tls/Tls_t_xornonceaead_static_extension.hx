package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_xorNonceAEAD_asInterface) class T_xorNonceAEAD_static_extension {
    @:keep
    @:tdfield
    static public function open( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD> = _f;
        for (_i => _b in _nonce) {
            (@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
        var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._aead.open(_out, ((@:checkr _f ?? throw "null pointer dereference")._nonceMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _additionalData), _result:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        for (_i => _b in _nonce) {
            (@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
        return { _0 : _result, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function seal( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD> = _f;
        for (_i => _b in _nonce) {
            (@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
        var _result = (@:checkr _f ?? throw "null pointer dereference")._aead.seal(_out, ((@:checkr _f ?? throw "null pointer dereference")._nonceMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _plaintext, _additionalData);
        for (_i => _b in _nonce) {
            (@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] = ((@:checkr _f ?? throw "null pointer dereference")._nonceMask[((4 : stdgo.GoInt) + _i : stdgo.GoInt)] ^ (_b) : stdgo.GoUInt8);
        };
        return _result;
    }
    @:keep
    @:tdfield
    static public function _explicitNonceLen( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD> = _f;
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function overhead( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._aead.overhead();
    }
    @:keep
    @:tdfield
    static public function nonceSize( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD> = _f;
        return (8 : stdgo.GoInt);
    }
}
