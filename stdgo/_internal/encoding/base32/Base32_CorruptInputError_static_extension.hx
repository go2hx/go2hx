package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.encoding.base32.Base32_CorruptInputError.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.base32.Base32_CorruptInputError.CorruptInputError = _e;
        return (("illegal base32 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}