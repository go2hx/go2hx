package stdgo.runtime.cgo;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class Handle {
    public function delete():Void {
        var _h = this.__copy__();
        var __tmp__ = _handles.loadAndDelete(Go.toInterface(_h.__t__)), _:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw "runtime/cgo: misuse of an invalid Handle";
        };
    }
    public function value():AnyInterface {
        var _h = this.__copy__();
        var __tmp__ = _handles.load(Go.toInterface(_h.__t__)), _v:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw "runtime/cgo: misuse of an invalid Handle";
        };
        return Go.toInterface(_v);
    }
    public var __t__ : GoUIntptr;
    public function new(?t:GoUIntptr) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Handle(__t__);
}
@:structInit @:local class T__struct_37 {
    public var _cstr : Pointer<GoUInt8> = new Pointer<GoUInt8>().nil();
    public function new(?_cstr:Pointer<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cstr) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_37(_cstr);
    }
    public function __set__(__tmp__) {
        this._cstr = __tmp__._cstr;
        return this;
    }
}
var _handles : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_().__copy__();
var __cgo_yield : stdgo.unsafe.Unsafe.Pointer_ = null;
var _x_cgo_sys_thread_create : GoByte = ((0 : GoUInt8));
var _x_cgo_thread_start : GoByte = ((0 : GoUInt8));
var __cgo_thread_start : Pointer<GoUInt8> = Go.pointer(_x_cgo_thread_start);
var _x_cgo_set_context_function : GoByte = ((0 : GoUInt8));
var _x_cgo_init : GoByte = ((0 : GoUInt8));
var __cgo_set_context_function : Pointer<GoUInt8> = Go.pointer(_x_cgo_set_context_function);
var __cgo_sys_thread_create : Pointer<GoUInt8> = Go.pointer(_x_cgo_sys_thread_create);
var _x_cgo_notify_runtime_init_done : GoByte = ((0 : GoUInt8));
var __cgo_notify_runtime_init_done : Pointer<GoUInt8> = Go.pointer(_x_cgo_notify_runtime_init_done);
var __cgo_init : Pointer<GoUInt8> = Go.pointer(_x_cgo_init);
var __iscgo : Bool = true;
var _handleIdx : GoUIntptr = ((0 : GoUIntptr));
/**
    //go:linkname _runtime_cgo_panic_internal runtime._cgo_panic_internal
**/
function __runtime_cgo_panic_internal(_p:Pointer<GoByte>):Void {}
/**
    //go:linkname _cgo_panic _cgo_panic
    //go:cgo_export_static _cgo_panic
    //go:cgo_export_dynamic _cgo_panic
**/
function __cgo_panic(_a:Pointer<T__struct_37>):Void {
        __runtime_cgo_panic_internal(_a.value._cstr);
    }
/**
    // NewHandle returns a handle for a given value.
    //
    // The handle is valid until the program calls Delete on it. The handle
    // uses resources, and this package assumes that C code may hold on to
    // the handle, so a program must explicitly call Delete when the handle
    // is no longer needed.
    //
    // The intended use is to pass the returned handle to C code, which
    // passes it back to Go, which calls Value.
**/
function newHandle(_v:AnyInterface):Handle {
        var _h:GoUIntptr = stdgo.sync.atomic.Atomic.addUintptr(Go.pointer(_handleIdx), ((1 : GoUIntptr)));
        if (_h == ((0 : GoUIntptr))) {
            throw "runtime/cgo: ran out of handle space";
        };
        _handles.store(Go.toInterface(_h), Go.toInterface(_v));
        return new Handle(_h);
    }
class Handle_extension_fields {
    public function value(__tmp__):AnyInterface return __tmp__.value();
    public function delete(__tmp__):Void __tmp__.delete();
}
