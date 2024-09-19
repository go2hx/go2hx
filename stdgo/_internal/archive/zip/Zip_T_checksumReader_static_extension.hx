package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_checksumReader_asInterface) class T_checksumReader_static_extension {
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader> = _r;
        return _r._rc.close();
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_r._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
        };
        {
            var __tmp__ = _r._rc.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._hash.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        _r._nread = (_r._nread + ((_n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        if ((_r._nread > _r._f.fileHeader.uncompressedSize64 : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.archive.zip.Zip_errFormat.errFormat };
        };
        if (_err == null) {
            return { _0 : _n, _1 : _err };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            if (_r._nread != (_r._f.fileHeader.uncompressedSize64)) {
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
            };
            if (_r._desr != null) {
                {
                    var _err1 = (stdgo._internal.archive.zip.Zip__readDataDescriptor._readDataDescriptor(_r._desr, _r._f) : stdgo.Error);
                    if (_err1 != null) {
                        if (stdgo.Go.toInterface(_err1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if (_r._hash.sum32() != (_r._f.fileHeader.crc32)) {
                        _err = stdgo._internal.archive.zip.Zip_errChecksum.errChecksum;
                    };
                };
            } else {
                if (((_r._f.fileHeader.crc32 != (0u32 : stdgo.GoUInt32)) && (_r._hash.sum32() != _r._f.fileHeader.crc32) : Bool)) {
                    _err = stdgo._internal.archive.zip.Zip_errChecksum.errChecksum;
                };
            };
        };
        _r._err = _err;
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function stat( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader> = _r;
        return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo((stdgo.Go.setRef(_r._f.fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>)) : stdgo._internal.archive.zip.Zip_T_headerFileInfo.T_headerFileInfo)), _1 : (null : stdgo.Error) };
    }
}
