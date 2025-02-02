package stdgo._internal.internal.abi;
function _unsafeStringFor(_b:stdgo.Pointer<stdgo.GoUInt8>, _l:stdgo.GoInt):stdgo.GoString {
        return (stdgo._internal.unsafe.Unsafe_string.string(_b, _l) : stdgo.GoString)?.__copy__();
    }
