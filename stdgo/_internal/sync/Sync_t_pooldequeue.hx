package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension) class T_poolDequeue {
    public var _headTail : stdgo.GoUInt64 = 0;
    public var _vals : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface> = (null : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
    public function new(?_headTail:stdgo.GoUInt64, ?_vals:stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>) {
        if (_headTail != null) this._headTail = _headTail;
        if (_vals != null) this._vals = _vals;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolDequeue(_headTail, _vals);
    }
}
