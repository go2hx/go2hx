package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.runtime.trace_.Trace_.Task_asInterface) class Task_static_extension {
    @:keep
    @:tdfield
    static public function end( _t:stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Task.Task> = _t;
        stdgo._internal.runtime.trace_.Trace___userTaskEnd._userTaskEnd((@:checkr _t ?? throw "null pointer dereference")._id);
    }
}
