package stdgo._internal.encoding.asn1;
function marshalWithParams(_val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(stdgo._internal.reflect.Reflect_valueof.valueOf(_val)?.__copy__(), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_params?.__copy__())?.__copy__()), _e:stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L741"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L742"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_e.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L745"
        _e.encode(_b);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L746"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
