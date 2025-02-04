package stdgo._internal.internal.abi;
function _unsafeSliceFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.unsafe.Unsafe_slice.slice(_b, _l);
    }
