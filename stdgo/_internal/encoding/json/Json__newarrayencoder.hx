package stdgo._internal.encoding.json;
function _newArrayEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        var _enc = (new stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder(stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(_t.elem())) : stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder);
        return _enc._encode;
    }
