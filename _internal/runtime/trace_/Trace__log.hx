package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function log(_ctx:stdgo._internal.context.Context_Context.Context, _category:stdgo.GoString, _message:stdgo.GoString):Void {
        var _id = (_internal.runtime.trace_.Trace___fromContext._fromContext(_ctx)._id : stdgo.GoUInt64);
        _internal.runtime.trace_.Trace___userLog._userLog(_id, _category?.__copy__(), _message?.__copy__());
    }
