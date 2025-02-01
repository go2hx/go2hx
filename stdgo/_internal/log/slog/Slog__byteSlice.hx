package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
function _byteSlice(_a:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_a : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
            }, _bs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return { _0 : _bs, _1 : true };
            };
        };
        var _t = (stdgo._internal.reflect.Reflect_typeOf.typeOf(_a) : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (((!((_t.string() : String) == (null.string() : String)) && _t.kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) && (_t.elem().kind() == (8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            return { _0 : stdgo._internal.reflect.Reflect_valueOf.valueOf(_a).bytes(), _1 : true };
        };
        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
    }
