package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function _fromContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface((new _internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey() : _internal.runtime.trace_.Trace_T_traceContextKey.T_traceContextKey))) : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>)) : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _s;
            };
        };
        return (stdgo.Go.setRef(_internal.runtime.trace_.Trace___bgTask._bgTask) : stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>);
    }
