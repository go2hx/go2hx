package stdgo._internal.encoding.asn1;
function unmarshalWithParams(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_val)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (((_v.kind() != (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || _v.isNil() : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError(stdgo._internal.reflect.Reflect_typeof.typeOf(_val)) : stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_t_invalidunmarshalerror.T_invalidUnmarshalError>)) };
                _rest = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parsefield._parseField(_v.elem()?.__copy__(), _b, (0 : stdgo.GoInt), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_params?.__copy__())?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                _rest = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (_b.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
