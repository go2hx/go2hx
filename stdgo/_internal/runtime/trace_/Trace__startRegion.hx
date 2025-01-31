package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function startRegion(_ctx:stdgo._internal.context.Context_Context.Context, _regionType:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Region.Region> {
        if (!stdgo._internal.runtime.trace_.Trace__isEnabled.isEnabled()) {
            return stdgo._internal.runtime.trace_.Trace___noopRegion._noopRegion;
        };
        var _id = (stdgo._internal.runtime.trace_.Trace___fromContext._fromContext(_ctx)._id : stdgo.GoUInt64);
        stdgo._internal.runtime.trace_.Trace___userRegion._userRegion(_id, (0i64 : stdgo.GoUInt64), _regionType?.__copy__());
        return (stdgo.Go.setRef((new stdgo._internal.runtime.trace_.Trace_Region.Region(_id, _regionType?.__copy__()) : stdgo._internal.runtime.trace_.Trace_Region.Region)) : stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Region.Region>);
    }
