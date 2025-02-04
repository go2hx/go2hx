package stdgo._internal.internal.abi;
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset {
        return stdgo._internal.internal.abi.Abi_initializedoffset.initializedOffset(stdgo._internal.internal.abi.Abi_commonsize.commonSize(_ptrSize), (_ptrSize : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), _twoWordAlignSlices)?.__copy__();
    }
