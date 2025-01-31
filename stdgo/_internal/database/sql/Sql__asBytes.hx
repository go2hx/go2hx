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
function _asBytes(_buf:stdgo.Slice<stdgo.GoUInt8>, _rv:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _ok = false;
        {
            final __value__ = _rv.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, _rv.int_(), (10 : stdgo.GoInt)), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : stdgo._internal.strconv.Strconv_appendUint.appendUint(_buf, _rv.uint(), (10 : stdgo.GoInt)), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_buf, _rv.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt)), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_buf, _rv.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt)), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : stdgo._internal.strconv.Strconv_appendBool.appendBool(_buf, _rv.bool_()), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _s = ((_rv.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : (_buf.__append__(...(_s : Array<stdgo.GoUInt8>))), _1 : true };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _b, _1 : _ok };
    }
