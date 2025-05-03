package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcDecrypter_asInterface) class T_cbcDecrypter_static_extension {
    @:keep
    @:tdfield
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L185"
        if ((_iv.length) != (((@:checkr _x ?? throw "null pointer dereference")._iv.length))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L186"
            throw stdgo.Go.toInterface(("cipher: incorrect length IV" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L188"
        (@:checkr _x ?? throw "null pointer dereference")._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L144"
        if (((_src.length) % (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L145"
            throw stdgo.Go.toInterface(("crypto/cipher: input not full blocks" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L147"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L148"
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L150"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L151"
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L153"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L154"
            return;
        };
        var _end = (_src.length : stdgo.GoInt);
        var _start = (_end - (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt);
        var _prev = (_start - (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L164"
        (@:checkr _x ?? throw "null pointer dereference")._tmp.__copyTo__((_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L167"
        while ((_start > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L168"
            (@:checkr _x ?? throw "null pointer dereference")._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L169"
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_prev, _start) : stdgo.Slice<stdgo.GoUInt8>));
            _end = _start;
            _start = _prev;
            _prev = (_prev - ((@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L177"
        (@:checkr _x ?? throw "null pointer dereference")._b.decrypt((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L178"
        stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _x ?? throw "null pointer dereference")._iv);
        {
            final __tmp__0 = (@:checkr _x ?? throw "null pointer dereference")._tmp;
            final __tmp__1 = (@:checkr _x ?? throw "null pointer dereference")._iv;
            (@:checkr _x ?? throw "null pointer dereference")._iv = @:binopAssign __tmp__0;
            (@:checkr _x ?? throw "null pointer dereference")._tmp = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L141"
        return (@:checkr _x ?? throw "null pointer dereference")._blockSize;
    }
}
