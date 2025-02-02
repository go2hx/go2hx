package stdgo._internal.strings;
function _noescape(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        var _x = ((new stdgo.GoUIntptr(_p) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        return (stdgo.Go.toInterface((_x ^ (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
