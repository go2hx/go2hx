package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function newTask(_pctx:stdgo._internal.context.Context_Context.Context, _taskType:stdgo.GoString):{ var _0 : stdgo._internal.context.Context_Context.Context; var _1 : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>; } {
        var _ctx = (null : stdgo._internal.context.Context_Context.Context), _task = (null : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>);
        var _pid = (_internal.runtime.trace_.Trace___fromContext._fromContext(_pctx)._id : stdgo.GoUInt64);
        var _id = (_internal.runtime.trace_.Trace___newID._newID() : stdgo.GoUInt64);
        _internal.runtime.trace_.Trace___userTaskCreate._userTaskCreate(_id, _pid, _taskType?.__copy__());
        var _s = (stdgo.Go.setRef(({ _id : _id } : _internal.runtime.trace_.Trace_Task.Task)) : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>);
        return { _0 : stdgo._internal.context.Context_withValue.withValue(_pctx, stdgo.Go.toInterface((new _internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey() : _internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_s))), _1 : _s };
    }
