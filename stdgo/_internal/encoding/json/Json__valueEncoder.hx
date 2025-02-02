package stdgo._internal.encoding.json;
function _valueEncoder(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        if (!_v.isValid()) {
            return stdgo._internal.encoding.json.Json__invalidValueEncoder._invalidValueEncoder;
        };
        return stdgo._internal.encoding.json.Json__typeEncoder._typeEncoder(_v.type());
    }
