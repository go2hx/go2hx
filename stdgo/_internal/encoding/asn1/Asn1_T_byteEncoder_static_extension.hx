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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_byteEncoder_asInterface) class T_byteEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _c:stdgo._internal.encoding.asn1.Asn1_T_byteEncoder.T_byteEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo._internal.encoding.asn1.Asn1_T_byteEncoder.T_byteEncoder = _c;
        _dst[(0 : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function len( _c:stdgo._internal.encoding.asn1.Asn1_T_byteEncoder.T_byteEncoder):stdgo.GoInt {
        @:recv var _c:stdgo._internal.encoding.asn1.Asn1_T_byteEncoder.T_byteEncoder = _c;
        return (1 : stdgo.GoInt);
    }
}
