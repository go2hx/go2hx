package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcDecrypter_asInterface) class T_cbcDecrypter_static_extension {
    @:keep
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter> = _x;
        if ((_iv.length) != ((_x._iv.length))) {
            throw stdgo.Go.toInterface(("cipher: incorrect length IV" : stdgo.GoString));
        };
        _x._iv.__copyTo__(_iv);
    }
    @:keep
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter> = _x;
        if (((_src.length) % _x._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("crypto/cipher: input not full blocks" : stdgo.GoString));
        };
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _end = (_src.length : stdgo.GoInt);
        var _start = (_end - _x._blockSize : stdgo.GoInt);
        var _prev = (_start - _x._blockSize : stdgo.GoInt);
        _x._tmp.__copyTo__((_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        while ((_start > (0 : stdgo.GoInt) : Bool)) {
            _x._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_prev, _start) : stdgo.Slice<stdgo.GoUInt8>));
            _end = _start;
            _start = _prev;
            _prev = (_prev - (_x._blockSize) : stdgo.GoInt);
        };
        _x._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), _x._iv);
        {
            final __tmp__0 = _x._tmp;
            final __tmp__1 = _x._iv;
            _x._iv = __tmp__0;
            _x._tmp = __tmp__1;
        };
    }
    @:keep
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cbcDecrypter.T_cbcDecrypter> = _x;
        return _x._blockSize;
    }
}
