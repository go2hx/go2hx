package stdgo._internal.crypto.x509;
function _newRawAttributes(_attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>; var _1 : stdgo.Error; } {
        var _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_attributes)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_rawAttributes) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>>))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : _err };
        };
        if ((_rest.length) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal raw CSR Attributes" : stdgo.GoString)) };
        };
        return { _0 : _rawAttributes, _1 : (null : stdgo.Error) };
    }
