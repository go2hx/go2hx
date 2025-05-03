package stdgo._internal.internal.fuzz;
function _sharedMemSize(_valueSize:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/mem.go#L61"
        return ((stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface((new stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader() : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader))) : stdgo.GoInt) + _valueSize : stdgo.GoInt);
    }
