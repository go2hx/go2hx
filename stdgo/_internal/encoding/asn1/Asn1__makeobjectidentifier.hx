package stdgo._internal.encoding.asn1;
function _makeObjectIdentifier(_oid:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        if (((((_oid.length) < (2 : stdgo.GoInt) : Bool) || (_oid[(0 : stdgo.GoInt)] > (2 : stdgo.GoInt) : Bool) : Bool) || (((_oid[(0 : stdgo.GoInt)] < (2 : stdgo.GoInt) : Bool) && (_oid[(1 : stdgo.GoInt)] >= (40 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("invalid object identifier" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_oid : stdgo._internal.encoding.asn1.Asn1_t_oidencoder.T_oidEncoder)), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
