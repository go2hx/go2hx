package stdgo._internal.log.slog.internal.benchmarks;
import stdgo._internal.time.Time;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler_static_extension.T_asyncHandler_static_extension) class T_asyncHandler {
    public var _ringBuffer : stdgo.GoArray<stdgo._internal.log.slog.Slog_Record.Record> = new stdgo.GoArray<stdgo._internal.log.slog.Slog_Record.Record>(100, 100, ...[for (i in 0 ... (100 > 100 ? 100 : 100 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.slog.Slog_Record.Record)]);
    public var _next : stdgo.GoInt = 0;
    public function new(?_ringBuffer:stdgo.GoArray<stdgo._internal.log.slog.Slog_Record.Record>, ?_next:stdgo.GoInt) {
        if (_ringBuffer != null) this._ringBuffer = _ringBuffer;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_asyncHandler(_ringBuffer, _next);
    }
}
