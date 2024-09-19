package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.KeySizeError_asInterface) class KeySizeError_static_extension {
    @:keep
    static public function error( _k:stdgo._internal.crypto.aes.Aes_KeySizeError.KeySizeError):stdgo.GoString {
        @:recv var _k:stdgo._internal.crypto.aes.Aes_KeySizeError.KeySizeError = _k;
        return (("crypto/aes: invalid key size " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_k : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
