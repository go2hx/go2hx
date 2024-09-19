package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function startRegion(_ctx:stdgo._internal.context.Context_Context.Context, _regionType:stdgo.GoString):stdgo.Ref<_internal.runtime.trace_.Trace_Region.Region> {
        if (!_internal.runtime.trace_.Trace__isEnabled.isEnabled()) {
            return _internal.runtime.trace_.Trace___noopRegion._noopRegion;
        };
        var _id = (_internal.runtime.trace_.Trace___fromContext._fromContext(_ctx)._id : stdgo.GoUInt64);
        _internal.runtime.trace_.Trace___userRegion._userRegion(_id, (0i64 : stdgo.GoUInt64), _regionType?.__copy__());
        return (stdgo.Go.setRef((new _internal.runtime.trace_.Trace_Region.Region(_id, _regionType?.__copy__()) : _internal.runtime.trace_.Trace_Region.Region)) : stdgo.Ref<_internal.runtime.trace_.Trace_Region.Region>);
    }
