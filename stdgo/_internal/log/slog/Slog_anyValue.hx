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
function anyValue(_v:stdgo.AnyInterface):stdgo._internal.log.slog.Slog_Value.Value {
        {
            final __type__ = _v;
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_stringValue.stringValue(_v?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _v:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_int64Value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _v:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_int64Value.int64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_boolValue.boolValue(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_Duration.Duration))) {
                var _v:stdgo._internal.time.Time_Duration.Duration = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_durationValue.durationValue(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.time.Time_Time.Time))) {
                var _v:stdgo._internal.time.Time_Time.Time = __type__ == null ? ({} : stdgo._internal.time.Time_Time.Time) : __type__.__underlying__() == null ? ({} : stdgo._internal.time.Time_Time.Time) : __type__ == null ? ({} : stdgo._internal.time.Time_Time.Time) : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_timeValue.timeValue(_v?.__copy__())?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUIntptr))) {
                var _v:stdgo.GoUIntptr = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_uint64Value.uint64Value((_v : stdgo.GoUInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_int64Value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_int64Value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_int64Value.int64Value((_v : stdgo.GoInt64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_float64Value.float64Value(_v)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_float64Value.float64Value((_v : stdgo.GoFloat64))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>))) {
                var _v:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>) : __type__.__underlying__().value;
                return stdgo._internal.log.slog.Slog_groupValue.groupValue(...(_v : Array<stdgo._internal.log.slog.Slog_Attr.Attr>))?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_Kind.Kind))) {
                var _v:stdgo._internal.log.slog.Slog_Kind.Kind = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Kind.Kind) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Kind.Kind) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Kind.Kind) : __type__.__underlying__().value;
                return ({ _any : stdgo.Go.toInterface((_v : stdgo._internal.log.slog.Slog_T_kind.T_kind)) } : stdgo._internal.log.slog.Slog_Value.Value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.log.slog.Slog_Value.Value))) {
                var _v:stdgo._internal.log.slog.Slog_Value.Value = __type__ == null ? ({} : stdgo._internal.log.slog.Slog_Value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.log.slog.Slog_Value.Value) : __type__ == null ? ({} : stdgo._internal.log.slog.Slog_Value.Value) : __type__.__underlying__().value;
                return _v?.__copy__();
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                return ({ _any : _v } : stdgo._internal.log.slog.Slog_Value.Value);
            };
        };
    }
