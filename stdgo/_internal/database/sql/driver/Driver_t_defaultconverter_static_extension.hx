package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_defaultConverter_asInterface) class T_defaultConverter_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _:stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter = _?.__copy__();
        if (stdgo._internal.database.sql.driver.Driver_isvalue.isValue(_v)) {
            return { _0 : stdgo.Go.toInterface(_v), _1 : (null : stdgo.Error) };
        };
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_valuer.Valuer))) {
                var _vr:stdgo._internal.database.sql.driver.Driver_valuer.Valuer = __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_valuer.Valuer) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.driver.Driver_valuer.Valuer) : __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_valuer.Valuer) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.database.sql.driver.Driver__callvaluervalue._callValuerValue(_vr), _sv:stdgo._internal.database.sql.driver.Driver_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : _err };
                };
                if (!stdgo._internal.database.sql.driver.Driver_isvalue.isValue(stdgo.Go.toInterface(_sv))) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("non-Value type %T returned from Value" : stdgo.GoString), stdgo.Go.toInterface(_sv)) };
                };
                return { _0 : _sv, _1 : (null : stdgo.Error) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose))) {
                var _vr:stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose = __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__() == null ? (null : stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose) : __type__ == null ? (null : stdgo._internal.database.sql.driver.Driver_t_decimaldecompose.T_decimalDecompose) : __type__.__underlying__().value;
                return { _0 : stdgo.Go.toInterface(_vr), _1 : (null : stdgo.Error) };
            };
        };
        var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        {
            final __value__ = _rv.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_rv.isNil()) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
                } else {
                    return (new stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter() : stdgo._internal.database.sql.driver.Driver_t_defaultconverter.T_defaultConverter).convertValue(_rv.elem().interface_());
                };
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return { _0 : stdgo.Go.toInterface(_rv.int_()), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return { _0 : stdgo.Go.toInterface((_rv.uint() : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _u64 = (_rv.uint() : stdgo.GoUInt64);
                if ((_u64 >= (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("uint64 values with high bit set are not supported" : stdgo.GoString)) };
                };
                return { _0 : stdgo.Go.toInterface((_u64 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return { _0 : stdgo.Go.toInterface(_rv.float_()), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return { _0 : stdgo.Go.toInterface(_rv.bool_()), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _ek = (_rv.type().elem().kind() : stdgo._internal.reflect.Reflect_kind.Kind);
                if (_ek == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    return { _0 : stdgo.Go.toInterface(_rv.bytes()), _1 : (null : stdgo.Error) };
                };
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported type %T, a slice of %s" : stdgo.GoString), _v, stdgo.Go.toInterface(stdgo.Go.asInterface(_ek))) };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return { _0 : stdgo.Go.toInterface((_rv.string() : stdgo.GoString)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported type %T, a %s" : stdgo.GoString), _v, stdgo.Go.toInterface(stdgo.Go.asInterface(_rv.kind()))) };
    }
}
