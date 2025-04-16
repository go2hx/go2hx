package stdgo._internal.runtime.cgo;
@:keep @:allow(stdgo._internal.runtime.cgo.Cgo.Handle_asInterface) class Handle_static_extension {
    @:keep
    @:tdfield
    static public function delete( _h:stdgo._internal.runtime.cgo.Cgo_handle.Handle):Void {
        @:recv var _h:stdgo._internal.runtime.cgo.Cgo_handle.Handle = _h;
        var __tmp__ = @:check2 stdgo._internal.runtime.cgo.Cgo__handles._handles.loadAndDelete(stdgo.Go.toInterface((new stdgo.GoUIntptr(_h) : stdgo.GoUIntptr))), __8:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("runtime/cgo: misuse of an invalid Handle" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function value( _h:stdgo._internal.runtime.cgo.Cgo_handle.Handle):stdgo.AnyInterface {
        @:recv var _h:stdgo._internal.runtime.cgo.Cgo_handle.Handle = _h;
        var __tmp__ = @:check2 stdgo._internal.runtime.cgo.Cgo__handles._handles.load(stdgo.Go.toInterface((new stdgo.GoUIntptr(_h) : stdgo.GoUIntptr))), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(("runtime/cgo: misuse of an invalid Handle" : stdgo.GoString));
        };
        return _v;
    }
}
