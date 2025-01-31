package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function newTask(_pctx:stdgo._internal.context.Context_Context.Context, _taskType:stdgo.GoString):{ var _0 : stdgo._internal.context.Context_Context.Context; var _1 : stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task>; } {
        var _ctx = (null : stdgo._internal.context.Context_Context.Context), _task = (null : stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task>);
        var _pid = (stdgo._internal.runtime.trace_.Trace___fromContext._fromContext(_pctx)._id : stdgo.GoUInt64);
        var _id = (stdgo._internal.runtime.trace_.Trace___newID._newID() : stdgo.GoUInt64);
        stdgo._internal.runtime.trace_.Trace___userTaskCreate._userTaskCreate(_id, _pid, _taskType?.__copy__());
        var _s = (stdgo.Go.setRef(({ _id : _id } : stdgo._internal.runtime.trace_.Trace_Task.Task)) : stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task>);
        return {
            final __tmp__:{ var _0 : stdgo._internal.context.Context_Context.Context; var _1 : stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task>; } = { _0 : stdgo._internal.context.Context_withValue.withValue(_pctx, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey() : stdgo._internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey))), stdgo.Go.toInterface(stdgo.Go.asInterface(_s))), _1 : _s };
            _ctx = __tmp__._0;
            _task = __tmp__._1;
            __tmp__;
        };
    }
