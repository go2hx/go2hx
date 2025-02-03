package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_xorNonceAEAD_static_extension) abstract T_xorNonceAEAD(stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD) from stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD to stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD {
    public var _nonceMask(get, set) : haxe.ds.Vector<std.UInt>;
    function get__nonceMask():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._nonceMask) i]);
    function set__nonceMask(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._nonceMask = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _aead(get, set) : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD;
    function get__aead():stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD return this._aead;
    function set__aead(v:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD):stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD {
        this._aead = v;
        return v;
    }
    public function new(?_nonceMask:haxe.ds.Vector<std.UInt>, ?_aead:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD) this = new stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD(([for (i in _nonceMask) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _aead);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
