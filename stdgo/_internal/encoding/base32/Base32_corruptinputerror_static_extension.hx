package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError = _e;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L286"
        return (("illegal base32 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
