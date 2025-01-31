package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.runtime.trace_.Trace_.Region_asInterface) class Region_static_extension {
    @:keep
    @:tdfield
    static public function end( _r:stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Region.Region>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.runtime.trace_.Trace_Region.Region> = _r;
        if (_r == (stdgo._internal.runtime.trace_.Trace___noopRegion._noopRegion)) {
            return;
        };
        stdgo._internal.runtime.trace_.Trace___userRegion._userRegion((@:checkr _r ?? throw "null pointer dereference")._id, (1i64 : stdgo.GoUInt64), (@:checkr _r ?? throw "null pointer dereference")._regionType?.__copy__());
    }
}
