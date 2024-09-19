package stdgo._internal.encoding.asn1;
function marshal(_val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return stdgo._internal.encoding.asn1.Asn1_marshalWithParams.marshalWithParams(_val, stdgo.Go.str()?.__copy__());
    }
