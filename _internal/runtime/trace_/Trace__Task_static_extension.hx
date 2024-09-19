package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(_internal.runtime.trace_.Trace_.Task_asInterface) class Task_static_extension {
    @:keep
    static public function end( _t:stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task>):Void {
        @:recv var _t:stdgo.Ref<_internal.runtime.trace_.Trace_Task.Task> = _t;
        _internal.runtime.trace_.Trace___userTaskEnd._userTaskEnd(_t._id);
    }
}
