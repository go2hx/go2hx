package stdgo._internal.encoding.json;
function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error {
        var _d:stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState = ({} : stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState);
        var _err = (stdgo._internal.encoding.json.Json__checkvalid._checkValid(_data, (stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L103"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L104"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L107"
        _d._init(_data);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L108"
        return _d._unmarshal(_v);
    }
