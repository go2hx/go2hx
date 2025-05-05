package stdgo._internal.encoding.json;
function _newTypeEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_, _allowAddr:Bool):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L385"
        if (((_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _allowAddr : Bool) && stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t).implements_(stdgo._internal.encoding.json.Json__marshalertype._marshalerType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L386"
            return stdgo._internal.encoding.json.Json__newcondaddrencoder._newCondAddrEncoder(stdgo._internal.encoding.json.Json__addrmarshalerencoder._addrMarshalerEncoder, stdgo._internal.encoding.json.Json__newtypeencoder._newTypeEncoder(_t, false));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L388"
        if (_t.implements_(stdgo._internal.encoding.json.Json__marshalertype._marshalerType)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L389"
            return stdgo._internal.encoding.json.Json__marshalerencoder._marshalerEncoder;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L391"
        if (((_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _allowAddr : Bool) && stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t).implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L392"
            return stdgo._internal.encoding.json.Json__newcondaddrencoder._newCondAddrEncoder(stdgo._internal.encoding.json.Json__addrtextmarshalerencoder._addrTextMarshalerEncoder, stdgo._internal.encoding.json.Json__newtypeencoder._newTypeEncoder(_t, false));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L394"
        if (_t.implements_(stdgo._internal.encoding.json.Json__textmarshalertype._textMarshalerType)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L395"
            return stdgo._internal.encoding.json.Json__textmarshalerencoder._textMarshalerEncoder;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L398"
        {
            final __value__ = _t.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L400"
                return stdgo._internal.encoding.json.Json__boolencoder._boolEncoder;
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L402"
                return stdgo._internal.encoding.json.Json__intencoder._intEncoder;
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L404"
                return stdgo._internal.encoding.json.Json__uintencoder._uintEncoder;
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L406"
                return stdgo._internal.encoding.json.Json__float32encoder._float32Encoder;
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L408"
                return stdgo._internal.encoding.json.Json__float64encoder._float64Encoder;
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L410"
                return stdgo._internal.encoding.json.Json__stringencoder._stringEncoder;
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L412"
                return stdgo._internal.encoding.json.Json__interfaceencoder._interfaceEncoder;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L414"
                return stdgo._internal.encoding.json.Json__newstructencoder._newStructEncoder(_t);
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L416"
                return stdgo._internal.encoding.json.Json__newmapencoder._newMapEncoder(_t);
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L418"
                return stdgo._internal.encoding.json.Json__newsliceencoder._newSliceEncoder(_t);
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L420"
                return stdgo._internal.encoding.json.Json__newarrayencoder._newArrayEncoder(_t);
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L422"
                return stdgo._internal.encoding.json.Json__newptrencoder._newPtrEncoder(_t);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L424"
                return stdgo._internal.encoding.json.Json__unsupportedtypeencoder._unsupportedTypeEncoder;
            };
        };
    }
