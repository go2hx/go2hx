package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(_internal.runtime.trace_.Trace_.Region_asInterface) class Region_static_extension {
    @:keep
    static public function end( _r:stdgo.Ref<_internal.runtime.trace_.Trace_Region.Region>):Void {
        @:recv var _r:stdgo.Ref<_internal.runtime.trace_.Trace_Region.Region> = _r;
        if (_r == (_internal.runtime.trace_.Trace___noopRegion._noopRegion)) {
            return;
        };
        _internal.runtime.trace_.Trace___userRegion._userRegion(_r._id, (1i64 : stdgo.GoUInt64), _r._regionType?.__copy__());
    }
}
