package stdgo._internal.encoding.asn1;
function _appendGeneralizedTime(_dst:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _year = (_t.year() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L410"
        if (((_year < (0 : stdgo.GoInt) : Bool) || (_year > (9999 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L411"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("cannot represent time as GeneralizedTime" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                _ret = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _dst = stdgo._internal.encoding.asn1.Asn1__appendfourdigits._appendFourDigits(_dst, _year);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L416"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__appendtimecommon._appendTimeCommon(_dst, _t?.__copy__()), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
