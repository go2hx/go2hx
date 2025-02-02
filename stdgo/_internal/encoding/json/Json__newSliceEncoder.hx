package stdgo._internal.encoding.json;
function _newSliceEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            var _p = (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t.elem()) : stdgo._internal.reflect.Reflect_Type_.Type_);
            if ((!_p.implements_(stdgo._internal.encoding.json.Json__marshalerType._marshalerType) && !_p.implements_(stdgo._internal.encoding.json.Json__textMarshalerType._textMarshalerType) : Bool)) {
                return stdgo._internal.encoding.json.Json__encodeByteSlice._encodeByteSlice;
            };
        };
        var _enc = (new stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder(stdgo._internal.encoding.json.Json__newArrayEncoder._newArrayEncoder(_t)) : stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder);
        return _enc._encode;
    }
