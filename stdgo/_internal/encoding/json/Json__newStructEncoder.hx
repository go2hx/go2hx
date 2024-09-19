package stdgo._internal.encoding.json;
function _newStructEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        var _se = ({ _fields : stdgo._internal.encoding.json.Json__cachedTypeFields._cachedTypeFields(_t)?.__copy__() } : stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder);
        return _se._encode;
    }
