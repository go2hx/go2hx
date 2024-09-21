package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_tbFrame {
    public var _funcName : stdgo.GoString = "";
    public var _args : stdgo.GoString = "";
    public var _inlined : Bool = false;
    public var _elided : stdgo.GoInt = 0;
    public var _off : stdgo.GoInt = 0;
    public function new(?_funcName:stdgo.GoString, ?_args:stdgo.GoString, ?_inlined:Bool, ?_elided:stdgo.GoInt, ?_off:stdgo.GoInt) {
        if (_funcName != null) this._funcName = _funcName;
        if (_args != null) this._args = _args;
        if (_inlined != null) this._inlined = _inlined;
        if (_elided != null) this._elided = _elided;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tbFrame(_funcName, _args, _inlined, _elided, _off);
    }
}
