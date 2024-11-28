package stdgo._internal.encoding.asn1;
function _makeGeneralizedTime(_t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__appendGeneralizedTime._appendGeneralizedTime(_dst, _t?.__copy__());
            _dst = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err };
        };
        return { _0 : _e = stdgo.Go.asInterface((_dst : stdgo._internal.encoding.asn1.Asn1_T_bytesEncoder.T_bytesEncoder)), _1 : _err = (null : stdgo.Error) };
    }
