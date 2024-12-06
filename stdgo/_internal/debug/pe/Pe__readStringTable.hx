package stdgo._internal.debug.pe;
function _readStringTable(_fh:stdgo.Ref<stdgo._internal.debug.pe.Pe_FileHeader.FileHeader>, _r:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):{ var _0 : stdgo._internal.debug.pe.Pe_StringTable.StringTable; var _1 : stdgo.Error; } {
        if ((_fh.pointerToSymbolTable <= (0u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _offset = (_fh.pointerToSymbolTable + ((18u32 : stdgo.GoUInt32) * _fh.numberOfSymbols : stdgo.GoUInt32) : stdgo.GoUInt32);
        var __tmp__ = _r.seek((_offset : stdgo.GoInt64), (0 : stdgo.GoInt)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to seek to string table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        var _l:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l__pointer__ = stdgo.Go.pointer(_l);
        _err = stdgo._internal.encoding.binary.Binary_read.read(_r, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(_l__pointer__));
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read string table length: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        if ((_l <= (4u32 : stdgo.GoUInt32) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        _l = (_l - ((4u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(_r, (_l : stdgo.GoUInt64)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("fail to read string table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
        };
        return { _0 : (_buf : stdgo._internal.debug.pe.Pe_StringTable.StringTable), _1 : (null : stdgo.Error) };
    }
