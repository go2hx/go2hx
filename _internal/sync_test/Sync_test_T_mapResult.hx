package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit class T_mapResult {
    public var _value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_value:stdgo.AnyInterface, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapResult(_value, _ok);
    }
}
