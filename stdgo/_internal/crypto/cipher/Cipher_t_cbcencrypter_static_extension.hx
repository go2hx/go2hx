package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cbcEncrypter_asInterface) class T_cbcEncrypter_static_extension {
    @:keep
    @:tdfield
    static public function setIV( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>, _iv:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L101"
        if ((_iv.length) != (((@:checkr _x ?? throw "null pointer dereference")._iv.length))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L102"
            throw stdgo.Go.toInterface(("cipher: incorrect length IV" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L104"
        (@:checkr _x ?? throw "null pointer dereference")._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function cryptBlocks( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L73"
        if (((_src.length) % (@:checkr _x ?? throw "null pointer dereference")._blockSize : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L74"
            throw stdgo.Go.toInterface(("crypto/cipher: input not full blocks" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L76"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L77"
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L79"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L80"
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        var _iv = (@:checkr _x ?? throw "null pointer dereference")._iv;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L85"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L87"
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes((_dst.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>), _iv);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L88"
            (@:checkr _x ?? throw "null pointer dereference")._b.encrypt((_dst.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>), (_dst.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>));
            _iv = (_dst.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__((@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_dst.__slice__((@:checkr _x ?? throw "null pointer dereference")._blockSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L97"
        (@:checkr _x ?? throw "null pointer dereference")._iv.__copyTo__(_iv);
    }
    @:keep
    @:tdfield
    static public function blockSize( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/cbc.go#L70"
        return (@:checkr _x ?? throw "null pointer dereference")._blockSize;
    }
}
