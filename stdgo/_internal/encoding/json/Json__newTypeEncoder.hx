package stdgo._internal.encoding.json;
function _newTypeEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_, _allowAddr:Bool):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        if (((_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _allowAddr : Bool) && stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t).implements_(stdgo._internal.encoding.json.Json__marshalerType._marshalerType) : Bool)) {
            return stdgo._internal.encoding.json.Json__newCondAddrEncoder._newCondAddrEncoder(stdgo._internal.encoding.json.Json__addrMarshalerEncoder._addrMarshalerEncoder, stdgo._internal.encoding.json.Json__newTypeEncoder._newTypeEncoder(_t, false));
        };
        if (_t.implements_(stdgo._internal.encoding.json.Json__marshalerType._marshalerType)) {
            return stdgo._internal.encoding.json.Json__marshalerEncoder._marshalerEncoder;
        };
        if (((_t.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _allowAddr : Bool) && stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t).implements_(stdgo._internal.encoding.json.Json__textMarshalerType._textMarshalerType) : Bool)) {
            return stdgo._internal.encoding.json.Json__newCondAddrEncoder._newCondAddrEncoder(stdgo._internal.encoding.json.Json__addrTextMarshalerEncoder._addrTextMarshalerEncoder, stdgo._internal.encoding.json.Json__newTypeEncoder._newTypeEncoder(_t, false));
        };
        if (_t.implements_(stdgo._internal.encoding.json.Json__textMarshalerType._textMarshalerType)) {
            return stdgo._internal.encoding.json.Json__textMarshalerEncoder._textMarshalerEncoder;
        };
        {
            final __value__ = _t.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__boolEncoder._boolEncoder;
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__intEncoder._intEncoder;
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__uintEncoder._uintEncoder;
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__float32Encoder._float32Encoder;
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__float64Encoder._float64Encoder;
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__stringEncoder._stringEncoder;
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__interfaceEncoder._interfaceEncoder;
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__newStructEncoder._newStructEncoder(_t);
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__newMapEncoder._newMapEncoder(_t);
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__newSliceEncoder._newSliceEncoder(_t);
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__newArrayEncoder._newArrayEncoder(_t);
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.encoding.json.Json__newPtrEncoder._newPtrEncoder(_t);
            } else {
                return stdgo._internal.encoding.json.Json__unsupportedTypeEncoder._unsupportedTypeEncoder;
            };
        };
    }
