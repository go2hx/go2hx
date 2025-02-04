package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _p : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>);
    public function new(?_p:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_p);
    }
}
