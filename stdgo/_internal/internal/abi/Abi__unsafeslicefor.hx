package stdgo._internal.internal.abi;
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/unsafestring_go120.go#L17"
        return stdgo._internal.unsafe.Unsafe_slice.slice(_b, _l);
    }
