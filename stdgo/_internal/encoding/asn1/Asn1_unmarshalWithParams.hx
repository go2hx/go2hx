package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function unmarshalWithParams(_b:stdgo.Slice<stdgo.GoUInt8>, _val:stdgo.AnyInterface, _params:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _rest = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_val)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_v.kind() != (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || _v.isNil() : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError(stdgo._internal.reflect.Reflect_typeOf.typeOf(_val)) : stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError)) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_T_invalidUnmarshalError.T_invalidUnmarshalError>)) };
                _rest = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1__parseField._parseField(_v.elem()?.__copy__(), _b, (0 : stdgo.GoInt), stdgo._internal.encoding.asn1.Asn1__parseFieldParameters._parseFieldParameters(_params?.__copy__())?.__copy__()), _offset:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
