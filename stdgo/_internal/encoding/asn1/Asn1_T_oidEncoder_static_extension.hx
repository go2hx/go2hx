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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.T_oidEncoder_asInterface) class T_oidEncoder_static_extension {
    @:keep
    @:tdfield
    static public function encode( _oid:stdgo._internal.encoding.asn1.Asn1_T_oidEncoder.T_oidEncoder, _dst:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _oid:stdgo._internal.encoding.asn1.Asn1_T_oidEncoder.T_oidEncoder = _oid;
        _dst = stdgo._internal.encoding.asn1.Asn1__appendBase128Int._appendBase128Int((_dst.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (((_oid[(0 : stdgo.GoInt)] * (40 : stdgo.GoInt) : stdgo.GoInt) + _oid[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt64));
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_oid.length) : Bool)) {
                _dst = stdgo._internal.encoding.asn1.Asn1__appendBase128Int._appendBase128Int(_dst, (_oid[(_i : stdgo.GoInt)] : stdgo.GoInt64));
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function len( _oid:stdgo._internal.encoding.asn1.Asn1_T_oidEncoder.T_oidEncoder):stdgo.GoInt {
        @:recv var _oid:stdgo._internal.encoding.asn1.Asn1_T_oidEncoder.T_oidEncoder = _oid;
        var _l = (stdgo._internal.encoding.asn1.Asn1__base128IntLength._base128IntLength((((_oid[(0 : stdgo.GoInt)] * (40 : stdgo.GoInt) : stdgo.GoInt) + _oid[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_oid.length) : Bool)) {
                _l = (_l + (stdgo._internal.encoding.asn1.Asn1__base128IntLength._base128IntLength((_oid[(_i : stdgo.GoInt)] : stdgo.GoInt64))) : stdgo.GoInt);
                _i++;
            };
        };
        return _l;
    }
}
