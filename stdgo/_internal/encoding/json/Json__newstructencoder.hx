package stdgo._internal.encoding.json;
function _newStructEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        var _se = ({ _fields : stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_t)?.__copy__() } : stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L717"
        return _se._encode;
    }
