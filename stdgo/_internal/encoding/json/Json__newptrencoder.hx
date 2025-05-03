package stdgo._internal.encoding.json;
function _newPtrEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        var _enc = (new stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder(stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(_t.elem())) : stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L884"
        return _enc._encode;
    }
