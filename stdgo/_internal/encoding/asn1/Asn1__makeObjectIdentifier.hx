package stdgo._internal.encoding.asn1;
function _makeObjectIdentifier(_oid:stdgo.Slice<stdgo.GoInt>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _err = (null : stdgo.Error);
        if (((((_oid.length) < (2 : stdgo.GoInt) : Bool) || (_oid[(0 : stdgo.GoInt)] > (2 : stdgo.GoInt) : Bool) : Bool) || (((_oid[(0 : stdgo.GoInt)] < (2 : stdgo.GoInt) : Bool) && (_oid[(1 : stdgo.GoInt)] >= (40 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            return { _0 : _e = (null : stdgo._internal.encoding.asn1.Asn1_T_encoder.T_encoder), _1 : _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError(("invalid object identifier" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_StructuralError.StructuralError)) };
        };
        return { _0 : _e = stdgo.Go.asInterface((_oid : stdgo._internal.encoding.asn1.Asn1_T_oidEncoder.T_oidEncoder)), _1 : _err = (null : stdgo.Error) };
    }
