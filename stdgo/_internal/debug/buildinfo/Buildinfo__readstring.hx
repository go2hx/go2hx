package stdgo._internal.debug.buildinfo;
function _readString(_x:stdgo._internal.debug.buildinfo.Buildinfo_t_exe.T_exe, _ptrSize:stdgo.GoInt, _readPtr:stdgo.Slice<stdgo.GoUInt8> -> stdgo.GoUInt64, _addr:stdgo.GoUInt64):stdgo.GoString {
        var __tmp__ = _x.readData(_addr, (((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) : stdgo.GoUInt64)), _hdr:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || ((_hdr.length) < ((2 : stdgo.GoInt) * _ptrSize : stdgo.GoInt) : Bool) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _dataAddr = (_readPtr(_hdr) : stdgo.GoUInt64);
        var _dataLen = (_readPtr((_hdr.__slice__(_ptrSize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        var __tmp__ = _x.readData(_dataAddr, _dataLen), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || ((_data.length : stdgo.GoUInt64) < _dataLen : Bool) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (_data : stdgo.GoString)?.__copy__();
    }
