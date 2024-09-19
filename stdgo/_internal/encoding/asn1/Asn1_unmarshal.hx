package stdgo._internal.encoding.asn1;
function unmarshal(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return stdgo._internal.encoding.asn1.Asn1_unmarshalWithParams.unmarshalWithParams(_b, _val, stdgo.Go.str()?.__copy__());
    }
