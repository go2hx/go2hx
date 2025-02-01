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
function _appendJSONTime(_s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _t:stdgo._internal.time.Time_Time.Time):Void {
        {
            var _y = (_t.year() : stdgo.GoInt);
            if (((_y < (0 : stdgo.GoInt) : Bool) || (_y >= (10000 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _s._appendError(stdgo._internal.errors.Errors_new_.new_(("time.Time year outside of range [0,9999]" : stdgo.GoString)));
            };
        };
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
        ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer).__setData__(_t.appendFormat(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)));
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
    }
