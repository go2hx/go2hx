package stdgo._internal.encoding.hex;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("encoding/hex: invalid byte: %#U" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoInt32)))?.__copy__();
    }
}
