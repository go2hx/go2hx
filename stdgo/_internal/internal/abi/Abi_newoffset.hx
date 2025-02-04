package stdgo._internal.internal.abi;
function newOffset(_ptrSize:stdgo.GoUInt8, _twoWordAlignSlices:Bool):stdgo._internal.internal.abi.Abi_offset.Offset {
        if (_twoWordAlignSlices) {
            return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : ((2 : stdgo.GoUInt8) * _ptrSize : stdgo.GoUInt8) } : stdgo._internal.internal.abi.Abi_offset.Offset);
        };
        return ({ _off : (0i64 : stdgo.GoUInt64), _align : (1 : stdgo.GoUInt8), _ptrSize : _ptrSize, _sliceAlign : _ptrSize } : stdgo._internal.internal.abi.Abi_offset.Offset);
    }
