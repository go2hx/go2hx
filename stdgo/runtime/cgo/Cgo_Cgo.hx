package stdgo.runtime.cgo;
class Cgo {
    /**
        NewHandle returns a handle for a given value.
        
        The handle is valid until the program calls Delete on it. The handle
        uses resources, and this package assumes that C code may hold on to
        the handle, so a program must explicitly call Delete when the handle
        is no longer needed.
        
        The intended use is to pass the returned handle to C code, which
        passes it back to Go, which calls Value.
    **/
    static public inline function newHandle(_v:stdgo.AnyInterface):Handle {
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.runtime.cgo.Cgo_newHandle.newHandle(_v);
    }
}
