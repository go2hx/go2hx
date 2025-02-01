package stdgo._internal.log.slog.internal.benchmarks;
import stdgo._internal.time.Time;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.slog.Slog;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _newAsyncHandler():stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler> {
        return (stdgo.Go.setRef((new stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler() : stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler)) : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler>);
    }
