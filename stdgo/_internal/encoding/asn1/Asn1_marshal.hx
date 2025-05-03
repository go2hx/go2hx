package stdgo._internal.encoding.asn1;
function marshal(_val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L734"
        return stdgo._internal.encoding.asn1.Asn1_marshalwithparams.marshalWithParams(_val, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
