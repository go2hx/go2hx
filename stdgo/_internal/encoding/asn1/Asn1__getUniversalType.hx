package stdgo._internal.encoding.asn1;
function _getUniversalType(_t:stdgo._internal.reflect.Reflect_Type_.Type_):{ var _0 : Bool; var _1 : stdgo.GoInt; var _2 : Bool; var _3 : Bool; } {
        var _matchAny = false, _tagNumber = (0 : stdgo.GoInt), _isCompound = false, _ok = false;
        {
            final __value__ = _t;
            if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawValueType._rawValueType.string() : String)) {
                return { _0 : true, _1 : (-1 : stdgo.GoInt), _2 : false, _3 : true };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__objectIdentifierType._objectIdentifierType.string() : String)) {
                return { _0 : false, _1 : (6 : stdgo.GoInt), _2 : false, _3 : true };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bitStringType._bitStringType.string() : String)) {
                return { _0 : false, _1 : (3 : stdgo.GoInt), _2 : false, _3 : true };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__timeType._timeType.string() : String)) {
                return { _0 : false, _1 : (23 : stdgo.GoInt), _2 : false, _3 : true };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__enumeratedType._enumeratedType.string() : String)) {
                return { _0 : false, _1 : (10 : stdgo.GoInt), _2 : false, _3 : true };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bigIntType._bigIntType.string() : String)) {
                return { _0 : false, _1 : (2 : stdgo.GoInt), _2 : false, _3 : true };
            };
        };
        {
            final __value__ = _t.kind();
            if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return { _0 : false, _1 : (1 : stdgo.GoInt), _2 : false, _3 : true };
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return { _0 : false, _1 : (2 : stdgo.GoInt), _2 : false, _3 : true };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return { _0 : false, _1 : (16 : stdgo.GoInt), _2 : true, _3 : true };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    return { _0 : false, _1 : (4 : stdgo.GoInt), _2 : false, _3 : true };
                };
                if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_t.name()?.__copy__(), ("SET" : stdgo.GoString))) {
                    return { _0 : false, _1 : (17 : stdgo.GoInt), _2 : true, _3 : true };
                };
                return { _0 : false, _1 : (16 : stdgo.GoInt), _2 : true, _3 : true };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return { _0 : false, _1 : (19 : stdgo.GoInt), _2 : false, _3 : true };
            };
        };
        return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : false, _3 : false };
    }
