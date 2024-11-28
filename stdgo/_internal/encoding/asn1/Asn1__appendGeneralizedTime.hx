package stdgo._internal.encoding.asn1;
function _appendGeneralizedTime(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _year = (_t.year() : stdgo.GoInt);
        if (((_year < (0 : stdgo.GoInt) : Bool) || (_year > (9999 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("cannot represent time as GeneralizedTime" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        _dst = stdgo._internal.encoding.asn1.Asn1__appendFourDigits._appendFourDigits(_dst, _year);
        return { _0 : _ret = stdgo._internal.encoding.asn1.Asn1__appendTimeCommon._appendTimeCommon(_dst, _t?.__copy__()), _1 : _err = (null : stdgo.Error) };
    }
