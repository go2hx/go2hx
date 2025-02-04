package stdgo._internal.crypto.rc4;
@:keep @:allow(stdgo._internal.crypto.rc4.Rc4.KeySizeError_asInterface) class KeySizeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _k:stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError):stdgo.GoString {
        @:recv var _k:stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError = _k;
        return (("crypto/rc4: invalid key size " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_k : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
