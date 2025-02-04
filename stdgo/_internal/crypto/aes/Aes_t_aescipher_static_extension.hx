package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_aesCipher_asInterface) class T_aesCipher_static_extension {
    @:keep
    @:tdfield
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        if (((_src.length) < (16 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/aes: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (16 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/aes: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/aes: invalid buffer overlap" : stdgo.GoString));
        };
        stdgo._internal.crypto.aes.Aes__decryptblockgo._decryptBlockGo((@:checkr _c ?? throw "null pointer dereference")._dec, _dst, _src);
    }
    @:keep
    @:tdfield
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        if (((_src.length) < (16 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/aes: input not full block" : stdgo.GoString));
        };
        if (((_dst.length) < (16 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/aes: output not full block" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            throw stdgo.Go.toInterface(("crypto/aes: invalid buffer overlap" : stdgo.GoString));
        };
        stdgo._internal.crypto.aes.Aes__encryptblockgo._encryptBlockGo((@:checkr _c ?? throw "null pointer dereference")._enc, _dst, _src);
    }
    @:keep
    @:tdfield
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher> = _c;
        return (16 : stdgo.GoInt);
    }
}
