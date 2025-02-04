package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.T_boolType_asInterface) class T_boolType_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _:stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType, _src:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType = _?.__copy__();
        {
            final __type__ = _src;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _s:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                return { _0 : stdgo.Go.toInterface(_s), _1 : (null : stdgo.Error) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(_s?.__copy__()), _b:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: couldn\'t convert %q into type bool" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
                };
                return { _0 : stdgo.Go.toInterface(_b), _1 : (null : stdgo.Error) };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _s:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool((_s : stdgo.GoString)?.__copy__()), _b:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: couldn\'t convert %q into type bool" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
                };
                return { _0 : stdgo.Go.toInterface(_b), _1 : (null : stdgo.Error) };
            };
        };
        var _sv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_src)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        {
            final __value__ = _sv.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _iv = (_sv.int_() : stdgo.GoInt64);
                if (((_iv == (1i64 : stdgo.GoInt64)) || (_iv == (0i64 : stdgo.GoInt64)) : Bool)) {
                    return { _0 : stdgo.Go.toInterface(_iv == ((1i64 : stdgo.GoInt64))), _1 : (null : stdgo.Error) };
                };
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: couldn\'t convert %d into type bool" : stdgo.GoString), stdgo.Go.toInterface(_iv)) };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _uv = (_sv.uint() : stdgo.GoUInt64);
                if (((_uv == (1i64 : stdgo.GoUInt64)) || (_uv == (0i64 : stdgo.GoUInt64)) : Bool)) {
                    return { _0 : stdgo.Go.toInterface(_uv == ((1i64 : stdgo.GoUInt64))), _1 : (null : stdgo.Error) };
                };
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: couldn\'t convert %d into type bool" : stdgo.GoString), stdgo.Go.toInterface(_uv)) };
            };
        };
        return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("sql/driver: couldn\'t convert %v (%T) into type bool" : stdgo.GoString), _src, _src) };
    }
    @:keep
    @:tdfield
    static public function string( _:stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType):stdgo.GoString {
        @:recv var _:stdgo._internal.database.sql.driver.Driver_t_booltype.T_boolType = _?.__copy__();
        return ("Bool" : stdgo.GoString);
    }
}
