package stdgo._internal.archive.zip;
function _readDirectory64End(_r:stdgo._internal.io.Io_readerat.ReaderAt, _offset:stdgo.GoInt64, _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((56 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L676"
        {
            var __tmp__ = _r.readAt(_buf, _offset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L677"
                return _err;
            };
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L681"
        {
            var _sig = (_b._uint32() : stdgo.GoUInt32);
            if (_sig != ((101075792u32 : stdgo.GoUInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L682"
                return _err = stdgo._internal.archive.zip.Zip_errformat.errFormat;
            };
        };
        _b = (_b.__slice__((12 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        (@:checkr _d ?? throw "null pointer dereference")._diskNbr = _b._uint32();
        (@:checkr _d ?? throw "null pointer dereference")._dirDiskNbr = _b._uint32();
        (@:checkr _d ?? throw "null pointer dereference")._dirRecordsThisDisk = _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directoryRecords = _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directorySize = _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directoryOffset = _b._uint64();
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L693"
        return _err = (null : stdgo.Error);
    }
