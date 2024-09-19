package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_caseInfo {
    public var _desc : stdgo.GoString = "";
    public var _canSelect : Bool = false;
    public var _recv : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var _closed : Bool = false;
    public var _helper : () -> Void = null;
    public var _panic : Bool = false;
    public function new(?_desc:stdgo.GoString, ?_canSelect:Bool, ?_recv:stdgo._internal.reflect.Reflect_Value.Value, ?_closed:Bool, ?_helper:() -> Void, ?_panic:Bool) {
        if (_desc != null) this._desc = _desc;
        if (_canSelect != null) this._canSelect = _canSelect;
        if (_recv != null) this._recv = _recv;
        if (_closed != null) this._closed = _closed;
        if (_helper != null) this._helper = _helper;
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_caseInfo(_desc, _canSelect, _recv, _closed, _helper, _panic);
    }
}
