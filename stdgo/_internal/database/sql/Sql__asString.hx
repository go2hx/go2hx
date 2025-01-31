package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
function _asString(_src:stdgo.AnyInterface):stdgo.GoString {
        {
            final __type__ = _src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                return _v?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                return (_v : stdgo.GoString)?.__copy__();
            };
        };
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_src)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        {
            final __value__ = _rv.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatInt.formatInt(_rv.int_(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatUint.formatUint(_rv.uint(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_rv.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_rv.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.strconv.Strconv_formatBool.formatBool(_rv.bool_())?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), _src)?.__copy__();
    }
