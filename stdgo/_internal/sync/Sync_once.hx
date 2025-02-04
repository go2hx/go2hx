package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_once_static_extension.Once_static_extension) class Once {
    public var _done : stdgo.GoUInt32 = 0;
    public var _m : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public function new(?_done:stdgo.GoUInt32, ?_m:stdgo._internal.sync.Sync_mutex.Mutex) {
        if (_done != null) this._done = _done;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Once(_done, _m);
    }
}
