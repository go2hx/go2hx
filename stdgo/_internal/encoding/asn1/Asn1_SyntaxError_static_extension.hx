package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError = _e?.__copy__();
        return (("asn1: syntax error: " : stdgo.GoString) + _e.msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
