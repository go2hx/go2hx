package stdgo._internal.encoding.json;
function _newArrayEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        var _enc = (new stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder(stdgo._internal.encoding.json.Json__typeEncoder._typeEncoder(_t.elem())) : stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder);
        return _enc._encode;
    }
