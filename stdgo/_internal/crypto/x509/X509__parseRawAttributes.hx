package stdgo._internal.crypto.x509;
function _parseRawAttributes(_rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET> {
        var _attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
        for (__1 => _rawAttr in _rawAttributes) {
            var _attr:stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET);
            var _attr__pointer__ = (stdgo.Go.setRef(_attr) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>);
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_rawAttr.fullBytes, stdgo.Go.toInterface(_attr__pointer__)), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_rest.length == (0 : stdgo.GoInt)) : Bool)) {
                _attributes = (_attributes.__append__(_attr?.__copy__()));
            };
        };
        return _attributes;
    }
