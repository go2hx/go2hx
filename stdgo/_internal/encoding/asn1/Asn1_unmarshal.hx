package stdgo._internal.encoding.asn1;
function unmarshal(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1093"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshalwithparams.unmarshalWithParams(_b, _val, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
