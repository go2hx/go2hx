package stdgo;
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.runtime.cgo.Cgo_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.runtime.cgo.Cgo_t__struct_0.T__struct_0;
typedef Handle = stdgo._internal.runtime.cgo.Cgo_handle.Handle;
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.runtime.cgo.Cgo_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef HandlePointer = stdgo._internal.runtime.cgo.Cgo_handlepointer.HandlePointer;
class Handle_static_extension {
    static public function delete(_h:Handle):Void {
        stdgo._internal.runtime.cgo.Cgo_handle_static_extension.Handle_static_extension.delete(_h);
    }
    static public function value(_h:Handle):stdgo.AnyInterface {
        return stdgo._internal.runtime.cgo.Cgo_handle_static_extension.Handle_static_extension.value(_h);
    }
}
class Cgo {
    /**
        * NewHandle returns a handle for a given value.
        * 
        * The handle is valid until the program calls Delete on it. The handle
        * uses resources, and this package assumes that C code may hold on to
        * the handle, so a program must explicitly call Delete when the handle
        * is no longer needed.
        * 
        * The intended use is to pass the returned handle to C code, which
        * passes it back to Go, which calls Value.
    **/
    static public inline function newHandle(_v:stdgo.AnyInterface):Handle {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.runtime.cgo.Cgo_newhandle.newHandle(_v);
    }
}
