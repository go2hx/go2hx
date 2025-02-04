package stdgo._internal.archive.zip;
function _readDirectory64End(_r:stdgo._internal.io.Io_readerat.ReaderAt, _offset:stdgo.GoInt64, _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_directoryend.T_directoryEnd>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((56 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _r.readAt(_buf, _offset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        {
            var _sig = (@:check2 _b._uint32() : stdgo.GoUInt32);
            if (_sig != ((101075792u32 : stdgo.GoUInt32))) {
                return _err = stdgo._internal.archive.zip.Zip_errformat.errFormat;
            };
        };
        _b = (_b.__slice__((12 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        (@:checkr _d ?? throw "null pointer dereference")._diskNbr = @:check2 _b._uint32();
        (@:checkr _d ?? throw "null pointer dereference")._dirDiskNbr = @:check2 _b._uint32();
        (@:checkr _d ?? throw "null pointer dereference")._dirRecordsThisDisk = @:check2 _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directoryRecords = @:check2 _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directorySize = @:check2 _b._uint64();
        (@:checkr _d ?? throw "null pointer dereference")._directoryOffset = @:check2 _b._uint64();
        return _err = (null : stdgo.Error);
    }
