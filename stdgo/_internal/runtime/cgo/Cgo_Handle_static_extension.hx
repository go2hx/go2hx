package stdgo._internal.runtime.cgo;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.runtime.cgo.Cgo.Handle_asInterface) class Handle_static_extension {
    @:keep
    static public function delete( _h:stdgo._internal.runtime.cgo.Cgo_Handle.Handle):Void {
        @:recv var _h:stdgo._internal.runtime.cgo.Cgo_Handle.Handle = _h;
        var __tmp__ = stdgo._internal.runtime.cgo.Cgo__handles._handles.loadAndDelete(stdgo.Go.toInterface((_h : stdgo.GoUIntptr))), __8:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("runtime/cgo: misuse of an invalid Handle" : stdgo.GoString));
        };
    }
    @:keep
    static public function value( _h:stdgo._internal.runtime.cgo.Cgo_Handle.Handle):stdgo.AnyInterface {
        @:recv var _h:stdgo._internal.runtime.cgo.Cgo_Handle.Handle = _h;
        var __tmp__ = stdgo._internal.runtime.cgo.Cgo__handles._handles.load(stdgo.Go.toInterface((_h : stdgo.GoUIntptr))), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("runtime/cgo: misuse of an invalid Handle" : stdgo.GoString));
        };
        return _v;
    }
}
