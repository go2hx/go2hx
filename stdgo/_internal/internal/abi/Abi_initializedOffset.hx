package stdgo._internal.internal.abi;
function initializedOffset(_off:stdgo.GoInt, _align:stdgo.GoUInt8, _ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_Offset.Offset {
        stdgo._internal.internal.abi.Abi__assertIsAPowerOfTwo._assertIsAPowerOfTwo(_align);
        var _o0 = (stdgo._internal.internal.abi.Abi_newOffset.newOffset(_ptrSize, _twoWordAlignSlices)?.__copy__() : stdgo._internal.internal.abi.Abi_Offset.Offset);
        _o0._off = (_off : stdgo.GoUInt64);
        _o0._align = _align;
        return _o0?.__copy__();
    }
