package stdgo._internal.internal.abi;
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset {
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L71"
        stdgo._internal.internal.abi.Abi__assertisapoweroftwo._assertIsAPowerOfTwo(_align);
        var _o0 = (stdgo._internal.internal.abi.Abi_newoffset.newOffset(_ptrSize, _twoWordAlignSlices)?.__copy__() : stdgo._internal.internal.abi.Abi_offset.Offset);
        _o0._off = (_off : stdgo.GoUInt64);
        _o0._align = _align;
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/compiletype.go#L75"
        return _o0?.__copy__();
    }
