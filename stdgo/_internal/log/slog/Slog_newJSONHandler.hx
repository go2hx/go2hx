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
function newJSONHandler(_w:stdgo._internal.io.Io_Writer.Writer, _opts:stdgo.Ref<stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions>):stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler> {
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            _opts = (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions() : stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions)) : stdgo.Ref<stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions>);
        };
        return (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler((stdgo.Go.setRef(({ _json : true, _w : _w, _opts : (_opts : stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions)?.__copy__(), _mu : (stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>) } : stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>)) : stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
    }
