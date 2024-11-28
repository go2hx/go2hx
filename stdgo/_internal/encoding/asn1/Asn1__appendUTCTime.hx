package stdgo._internal.encoding.asn1;
function _appendUTCTime(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _year = (_t.year() : stdgo.GoInt);
        if ((((1950 : stdgo.GoInt) <= _year : Bool) && (_year < (2000 : stdgo.GoInt) : Bool) : Bool)) {
            _dst = stdgo._internal.encoding.asn1.Asn1__appendTwoDigits._appendTwoDigits(_dst, (_year - (1900 : stdgo.GoInt) : stdgo.GoInt));
        } else if ((((2000 : stdgo.GoInt) <= _year : Bool) && (_year < (2050 : stdgo.GoInt) : Bool) : Bool)) {
            _dst = stdgo._internal.encoding.asn1.Asn1__appendTwoDigits._appendTwoDigits(_dst, (_year - (2000 : stdgo.GoInt) : stdgo.GoInt));
        } else {
            return { _0 : _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("cannot represent time as UTCTime" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        return { _0 : _ret = stdgo._internal.encoding.asn1.Asn1__appendTimeCommon._appendTimeCommon(_dst, _t?.__copy__()), _1 : _err = (null : stdgo.Error) };
    }
