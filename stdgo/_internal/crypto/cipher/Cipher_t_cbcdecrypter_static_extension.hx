package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcDecrypter_asInterface) class T_cbcDecrypter_static_extension {
    @:keep
    @:tdfield
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        if ((_iv.length) != (((@:checkr _x ?? throw "null pointer dereference")._iv.length))) {
            throw stdgo.Go.toInterface(("cipher: incorrect length IV" : stdgo.GoString));
        };
        (@:checkr _x ?? throw "null pointer dereference")._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        if (((_src.length) % (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("crypto/cipher: input not full blocks" : stdgo.GoString));
        };
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _end = (_src.length : stdgo.GoInt);
        var _start = (_end - (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt);
        var _prev = (_start - (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt);
        (@:checkr _x ?? throw "null pointer dereference")._tmp.__copyTo__((_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        while ((_start > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _x ?? throw "null pointer dereference")._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_prev, _start) : stdgo.Slice<stdgo.GoUInt8>));
            _end = _start;
            _start = _prev;
            _prev = (_prev - ((@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.GoInt);
        };
        (@:checkr _x ?? throw "null pointer dereference")._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _x ?? throw "null pointer dereference")._iv);
        {
            final __tmp__0 = (@:checkr _x ?? throw "null pointer dereference")._tmp;
            final __tmp__1 = (@:checkr _x ?? throw "null pointer dereference")._iv;
            (@:checkr _x ?? throw "null pointer dereference")._iv = __tmp__0;
            (@:checkr _x ?? throw "null pointer dereference")._tmp = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        return (@:checkr _x ?? throw "null pointer dereference")._blockSize;
    }
}
