package stdgo._internal.archive.zip;
function _readDirectory64End(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _offset:stdgo.GoInt64, _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_directoryEnd.T_directoryEnd>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((56 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.readAt(_buf, _offset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        {
            var _sig = (_b._uint32() : stdgo.GoUInt32);
            if (_sig != ((101075792u32 : stdgo.GoUInt32))) {
                return stdgo._internal.archive.zip.Zip_errFormat.errFormat;
            };
        };
        _b = (_b.__slice__((12 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        _d._diskNbr = _b._uint32();
        _d._dirDiskNbr = _b._uint32();
        _d._dirRecordsThisDisk = _b._uint64();
        _d._directoryRecords = _b._uint64();
        _d._directorySize = _b._uint64();
        _d._directoryOffset = _b._uint64();
        return (null : stdgo.Error);
    }
