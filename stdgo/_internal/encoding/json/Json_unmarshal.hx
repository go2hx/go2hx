package stdgo._internal.encoding.json;
function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error {
        var _d:stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState = ({} : stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState);
        var _err = (stdgo._internal.encoding.json.Json__checkvalid._checkValid(_data, (stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        @:check2 _d._init(_data);
        return @:check2 _d._unmarshal(_v);
    }
