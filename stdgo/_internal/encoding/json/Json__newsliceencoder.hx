package stdgo._internal.encoding.json;
function _newSliceEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L828"
        if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            var _p = (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t.elem()) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L830"
            if ((!_p.implements_(stdgo._internal.encoding.json.Json__marshalertype._marshalerType) && !_p.implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L831"
                return stdgo._internal.encoding.json.Json__encodebyteslice._encodeByteSlice;
            };
        };
        var _enc = (new stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder(stdgo._internal.encoding.json.Json__newarrayencoder._newArrayEncoder(_t)) : stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L835"
        return _enc._encode;
    }
