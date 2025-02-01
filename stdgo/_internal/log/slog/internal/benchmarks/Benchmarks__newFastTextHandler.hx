package stdgo._internal.log.slog.internal.benchmarks;
import stdgo._internal.time.Time;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _newFastTextHandler(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.log.slog.Slog_Handler.Handler {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _w : _w } : stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler)) : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>));
    }
