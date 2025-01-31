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
function _appendGeneralizedTime(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _year = (_t.year() : stdgo.GoInt);
        if (((_year < (0 : stdgo.GoInt) : Bool) || (_year > (9999 : stdgo.GoInt) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("cannot represent time as GeneralizedTime" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
                _ret = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _dst = stdgo._internal.encoding.asn1.Asn1__appendFourDigits._appendFourDigits(_dst, _year);
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__appendTimeCommon._appendTimeCommon(_dst, _t?.__copy__()), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
