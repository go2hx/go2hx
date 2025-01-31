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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_multiEncoder_asInterface) class T_multiEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _m:stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _m:stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder = _m;
        var _off:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _e in _m) {
            _e.encode((_dst.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>));
            _off = (_off + (_e.len()) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function len( _m:stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder):stdgo.GoInt {
        @:recv var _m:stdgo._internal.encoding.asn1.Asn1_T_multiEncoder.T_multiEncoder = _m;
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _e in _m) {
            _size = (_size + (_e.len()) : stdgo.GoInt);
        };
        return _size;
    }
}
