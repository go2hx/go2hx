package stdgo._internal.encoding.json;
function unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.AnyInterface):stdgo.Error {
        var _d:stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState = ({} : stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState);
        var _err = (stdgo._internal.encoding.json.Json__checkValid._checkValid(_data, (stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        _d._init(_data);
        return _d._unmarshal(_v);
    }
