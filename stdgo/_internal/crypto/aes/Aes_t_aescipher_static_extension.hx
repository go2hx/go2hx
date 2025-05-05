package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_aesCipher_asInterface) class T_aesCipher_static_extension {
    @:keep
    @:tdfield
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L72"
        if (((_src.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L73"
            throw stdgo.Go.toInterface(("crypto/aes: input not full block" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L75"
        if (((_dst.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L76"
            throw stdgo.Go.toInterface(("crypto/aes: output not full block" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L78"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L79"
            throw stdgo.Go.toInterface(("crypto/aes: invalid buffer overlap" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L81"
        stdgo._internal.crypto.aes.Aes__decryptblockgo._decryptBlockGo((@:checkr _c ?? throw "null pointer dereference")._dec, _dst, _src);
    }
    @:keep
    @:tdfield
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L59"
        if (((_src.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L60"
            throw stdgo.Go.toInterface(("crypto/aes: input not full block" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L62"
        if (((_dst.length) < (16 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L63"
            throw stdgo.Go.toInterface(("crypto/aes: output not full block" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L65"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L66"
            throw stdgo.Go.toInterface(("crypto/aes: invalid buffer overlap" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L68"
        stdgo._internal.crypto.aes.Aes__encryptblockgo._encryptBlockGo((@:checkr _c ?? throw "null pointer dereference")._enc, _dst, _src);
    }
    @:keep
    @:tdfield
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/aes/cipher.go#L56"
        return (16 : stdgo.GoInt);
    }
}
