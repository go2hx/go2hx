package stdgo._internal.encoding.json;
function _valueEncoder(_v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L338"
        if (!_v.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L339"
            return stdgo._internal.encoding.json.Json__invalidvalueencoder._invalidValueEncoder;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L341"
        return stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(_v.type());
    }
