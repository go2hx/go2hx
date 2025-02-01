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
@:structInit @:using(stdgo._internal.log.slog.Slog_T_handlerWriter_static_extension.T_handlerWriter_static_extension) class T_handlerWriter {
    public var _h : stdgo._internal.log.slog.Slog_Handler.Handler = (null : stdgo._internal.log.slog.Slog_Handler.Handler);
    public var _level : stdgo._internal.log.slog.Slog_Level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Level.Level);
    public var _capturePC : Bool = false;
    public function new(?_h:stdgo._internal.log.slog.Slog_Handler.Handler, ?_level:stdgo._internal.log.slog.Slog_Level.Level, ?_capturePC:Bool) {
        if (_h != null) this._h = _h;
        if (_level != null) this._level = _level;
        if (_capturePC != null) this._capturePC = _capturePC;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_handlerWriter(_h, _level, _capturePC);
    }
}
