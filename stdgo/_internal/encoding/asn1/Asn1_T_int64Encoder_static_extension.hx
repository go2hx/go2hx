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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_int64Encoder_asInterface) class T_int64Encoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _i:stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder = _i;
        var _n = (_i.len() : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < _n : Bool)) {
                _dst[(_j : stdgo.GoInt)] = ((_i >> (((((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _j : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder) : stdgo.GoUInt8);
                _j++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _i:stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder):stdgo.GoInt {
        @:recv var _i:stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder = _i;
        var _n = (1 : stdgo.GoInt);
        while ((_i > (127i64 : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder) : Bool)) {
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder);
        };
        while ((_i < (-128i64 : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder) : Bool)) {
            _n++;
            _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.encoding.asn1.Asn1_T_int64Encoder.T_int64Encoder);
        };
        return _n;
    }
}
