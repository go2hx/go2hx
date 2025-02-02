package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_Map__static_extension.Map__static_extension) class Map_ {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _read : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.sync.Sync_T_readOnly.T_readOnly> = ({} : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>);
    public var _dirty : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>);
    public var _misses : stdgo.GoInt = 0;
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_read:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>, ?_misses:stdgo.GoInt) {
        if (_mu != null) this._mu = _mu;
        if (_read != null) this._read = _read;
        if (_dirty != null) this._dirty = _dirty;
        if (_misses != null) this._misses = _misses;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Map_(_mu, _read, _dirty, _misses);
    }
}
