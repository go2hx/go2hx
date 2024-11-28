package stdgo._internal.encoding.asn1;
function unmarshalWithParams(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_val)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_v.kind() != (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || _v.isNil() : Bool)) {
            return { _0 : _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError(stdgo._internal.reflect.Reflect_typeOf.typeOf(_val)) : stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError>)) };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseField._parseField(_v.elem()?.__copy__(), _b, (0 : stdgo.GoInt), stdgo._internal.encoding.asn1.Asn1__parseFieldParameters._parseFieldParameters(_params?.__copy__())?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        return { _0 : _rest = (_b.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err = (null : stdgo.Error) };
    }
