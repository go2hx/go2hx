package stdgo._internal.internal.abi;
function commonOffset(_ptrSize:stdgo.GoInt, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_Offset.Offset {
        return stdgo._internal.internal.abi.Abi_initializedOffset.initializedOffset(stdgo._internal.internal.abi.Abi_commonSize.commonSize(_ptrSize), (_ptrSize : stdgo.GoUInt8), (_ptrSize : stdgo.GoUInt8), _twoWordAlignSlices)?.__copy__();
    }
