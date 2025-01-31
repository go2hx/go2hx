package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.hex.Hex_InvalidByteError.InvalidByteError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("encoding/hex: invalid byte: %#U" : stdgo.GoString), stdgo.Go.toInterface((_e : stdgo.GoInt32)))?.__copy__();
    }
}
