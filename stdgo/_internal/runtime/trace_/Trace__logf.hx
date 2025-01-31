package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function logf(_ctx:stdgo._internal.context.Context_Context.Context, _category:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        if (stdgo._internal.runtime.trace_.Trace__isEnabled.isEnabled()) {
            var _id = (stdgo._internal.runtime.trace_.Trace___fromContext._fromContext(_ctx)._id : stdgo.GoUInt64);
            stdgo._internal.runtime.trace_.Trace___userLog._userLog(_id, _category?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
        };
    }
