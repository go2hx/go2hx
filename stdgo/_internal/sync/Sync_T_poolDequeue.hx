package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.sync.Sync_T_poolDequeue_static_extension.T_poolDequeue_static_extension) class T_poolDequeue {
    public var _headTail : stdgo.GoUInt64 = 0;
    public var _vals : stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface> = (null : stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>);
    public function new(?_headTail:stdgo.GoUInt64, ?_vals:stdgo.Slice<stdgo._internal.sync.Sync_T_eface.T_eface>) {
        if (_headTail != null) this._headTail = _headTail;
        if (_vals != null) this._vals = _vals;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolDequeue(_headTail, _vals);
    }
}
