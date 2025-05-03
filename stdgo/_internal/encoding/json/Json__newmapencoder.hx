package stdgo._internal.encoding.json;
function _newMapEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L766"
        {
            final __value__ = _t.key().kind();
            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L771"
                if (!_t.key().implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L772"
                    return stdgo._internal.encoding.json.Json__unsupportedtypeencoder._unsupportedTypeEncoder;
                };
            };
        };
        var _me = (new stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder(stdgo._internal.encoding.json.Json__typeencoder._typeEncoder(_t.elem())) : stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L776"
        return _me._encode;
    }
