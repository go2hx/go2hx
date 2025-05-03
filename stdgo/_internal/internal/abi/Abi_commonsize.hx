package stdgo._internal.internal.abi;
function commonSize(_ptrSize:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L15"
        return ((((4 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt) + (8 : stdgo.GoInt) : stdgo.GoInt);
    }
