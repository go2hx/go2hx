package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function tFlagOff(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        return (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
    }
