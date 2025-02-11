package stdgo._internal.encoding.asn1;
function unmarshal(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshalwithparams.unmarshalWithParams(_b, _val, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            _rest = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _rest, _1 : _err };
        };
    }
