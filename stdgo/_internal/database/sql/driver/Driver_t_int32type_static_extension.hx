package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_int32Type_asInterface) class T_int32Type_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _:stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_t_int32type.T_int32Type = _?.__copy__();
        var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        {
            final __value__ = _rv.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _i64 = (_rv.int_() : stdgo.GoInt64);
                if (((_i64 > (2147483647i64 : stdgo.GoInt64) : Bool) || (_i64 < (-2147483648i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: value %d overflows int32" : stdgo.GoString), _v) };
                };
                return { _0 : stdgo.Go.toInterface(_i64), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _u64 = (_rv.uint() : stdgo.GoUInt64);
                if ((_u64 > (2147483647i64 : stdgo.GoUInt64) : Bool)) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: value %d overflows int32" : stdgo.GoString), _v) };
                };
                return { _0 : stdgo.Go.toInterface((_u64 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_rv.string() : stdgo.GoString)?.__copy__()), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: value %q can\'t be converted to int32" : stdgo.GoString), _v) };
                };
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: unsupported value %v (type %T) converting to int32" : stdgo.GoString), _v, _v) };
    }
}
