package stdgo._internal.encoding.json;
function _newPtrEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        var _enc = (new stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder(stdgo._internal.encoding.json.Json__typeEncoder._typeEncoder(_t.elem())) : stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder);
        return _enc._encode;
    }
