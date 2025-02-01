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
function timeValue(_v:stdgo._internal.time.Time_Time.Time):stdgo._internal.log.slog.Slog_Value.Value {
        if (_v.isZero()) {
            return ({ _any : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo._internal.log.slog.Slog_T_timeLocation.T_timeLocation))) } : stdgo._internal.log.slog.Slog_Value.Value);
        };
        return ({ _num : (_v.unixNano() : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((({
            final e = _v.location();
            ({ _name : e._name, _zone : e._zone, _tx : e._tx, _extend : e._extend, _cacheStart : e._cacheStart, _cacheEnd : e._cacheEnd, _cacheZone : e._cacheZone } : stdgo._internal.time.Time_Location.Location);
        })))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
