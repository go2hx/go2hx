package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.sync.Sync_T_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _p : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.AnyInterface> = ({} : _internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.AnyInterface>);
    public function new(?_p:_internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.AnyInterface>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_p);
    }
}
