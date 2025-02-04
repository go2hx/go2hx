package stdgo._internal.encoding.json;
function _valueEncoder(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        if (!_v.isValid()) {
            return stdgo._internal.encoding.json.Json__invalidvalueencoder._invalidValueEncoder;
        };
        return stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(_v.type());
    }
