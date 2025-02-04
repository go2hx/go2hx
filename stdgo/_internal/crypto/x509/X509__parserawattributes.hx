package stdgo._internal.crypto.x509;
function _parseRawAttributes(_rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>):stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET> {
        var _attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>);
        for (__1 => _rawAttr in _rawAttributes) {
            var _attr:stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET = ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET);
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_rawAttr.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_attr) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_rest.length == (0 : stdgo.GoInt)) : Bool)) {
                _attributes = (_attributes.__append__(_attr?.__copy__()));
            };
        };
        return _attributes;
    }
