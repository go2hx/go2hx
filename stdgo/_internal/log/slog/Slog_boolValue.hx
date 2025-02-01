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
function boolValue(_v:Bool):stdgo._internal.log.slog.Slog_Value.Value {
        var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_v) {
            _u = (1i64 : stdgo.GoUInt64);
        };
        return ({ _num : _u, _any : stdgo.Go.toInterface(stdgo.Go.asInterface((1 : stdgo._internal.log.slog.Slog_Kind.Kind))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
