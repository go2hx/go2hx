package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcEncrypter_asInterface) class T_cbcEncrypter_static_extension {
    @:keep
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter> = _x;
        if ((_iv.length) != ((_x._iv.length))) {
            throw stdgo.Go.toInterface(("cipher: incorrect length IV" : stdgo.GoString));
        };
        stdgo.Go.copySlice(_x._iv, _iv);
    }
    @:keep
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter> = _x;
        if (((_src.length) % _x._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("crypto/cipher: input not full blocks" : stdgo.GoString));
        };
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        var _iv = _x._iv;
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes((_dst.__slice__(0, _x._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _x._blockSize) : stdgo.Slice<stdgo.GoUInt8>), _iv);
            _x._b.encrypt((_dst.__slice__(0, _x._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(0, _x._blockSize) : stdgo.Slice<stdgo.GoUInt8>));
            _iv = (_dst.__slice__(0, _x._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_x._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_dst.__slice__(_x._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        stdgo.Go.copySlice(_x._iv, _iv);
    }
    @:keep
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcEncrypter.T_cbcEncrypter> = _x;
        return _x._blockSize;
    }
}