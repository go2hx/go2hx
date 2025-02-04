package stdgo._internal.encoding.json;
function _newSliceEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            var _p = (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t.elem()) : stdgo._internal.reflect.Reflect_type_.Type_);
            if ((!_p.implements_(stdgo._internal.encoding.json.Json__marshalertype._marshalerType) && !_p.implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType) : Bool)) {
                return stdgo._internal.encoding.json.Json__encodebyteslice._encodeByteSlice;
            };
        };
        var _enc = (new stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder(stdgo._internal.encoding.json.Json__newarrayencoder._newArrayEncoder(_t)) : stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder);
        return _enc._encode;
    }
