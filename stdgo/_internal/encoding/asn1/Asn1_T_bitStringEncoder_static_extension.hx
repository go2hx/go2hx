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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_bitStringEncoder_asInterface) class T_bitStringEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _b:stdgo._internal.encoding.asn1.Asn1_T_bitStringEncoder.T_bitStringEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_T_bitStringEncoder.T_bitStringEncoder = _b?.__copy__();
        _dst[(0 : stdgo.GoInt)] = (((((8 : stdgo.GoInt) - (_b.bitLength % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        if ((_dst.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b.bytes) != ((_b.bytes.length))) {
            throw stdgo.Go.toInterface(("internal error" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function len( _b:stdgo._internal.encoding.asn1.Asn1_T_bitStringEncoder.T_bitStringEncoder):stdgo.GoInt {
        @:recv var _b:stdgo._internal.encoding.asn1.Asn1_T_bitStringEncoder.T_bitStringEncoder = _b?.__copy__();
        return ((_b.bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
}
