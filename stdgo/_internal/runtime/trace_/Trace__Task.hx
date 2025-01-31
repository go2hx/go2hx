package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.runtime.trace_.Trace__Task_static_extension.Task_static_extension) class Task {
    public var _id : stdgo.GoUInt64 = 0;
    public function new(?_id:stdgo.GoUInt64) {
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Task(_id);
    }
}
