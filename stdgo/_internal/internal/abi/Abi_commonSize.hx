package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return ((((4 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
    }
