package stdgo._internal.internal.abi;
function _addChecked(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _x:stdgo.GoUIntptr, _whySafe:stdgo.GoString):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/type.go#L227"
        return (stdgo.Go.toInterface(((new stdgo.GoUIntptr(_p) : stdgo.GoUIntptr) + _x : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
