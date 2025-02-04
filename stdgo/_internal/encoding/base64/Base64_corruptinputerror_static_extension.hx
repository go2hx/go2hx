package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError = _e;
        return (("illegal base64 data at input byte " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
