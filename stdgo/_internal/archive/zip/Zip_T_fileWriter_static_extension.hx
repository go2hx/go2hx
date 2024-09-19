package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_fileWriter_asInterface) class T_fileWriter_static_extension {
    @:keep
    static public function _writeDataDescriptor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter> = _w;
        if (!_w._hasDataDescriptor()) {
            return (null : stdgo.Error);
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (_w._isZip64()) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((24 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf);
        _b._uint32((134695760u32 : stdgo.GoUInt32));
        _b._uint32(_w._header.fileHeader.crc32);
        if (_w._isZip64()) {
            _b._uint64(_w._header.fileHeader.compressedSize64);
            _b._uint64(_w._header.fileHeader.uncompressedSize64);
        } else {
            _b._uint32(_w._header.fileHeader.compressedSize);
            _b._uint32(_w._header.fileHeader.uncompressedSize);
        };
        var __tmp__ = _w._zipw.write(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function _close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter> = _w;
        if (_w._closed) {
            return stdgo._internal.errors.Errors_new_.new_(("zip: file closed twice" : stdgo.GoString));
        };
        _w._closed = true;
        if (_w._header._raw) {
            return _w._writeDataDescriptor();
        };
        {
            var _err = (_w._comp.close() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _fh = _w._header.fileHeader;
        _fh.crc32 = _w._crc32.sum32();
        _fh.compressedSize64 = (_w._compCount._count : stdgo.GoUInt64);
        _fh.uncompressedSize64 = (_w._rawCount._count : stdgo.GoUInt64);
        if (_fh._isZip64()) {
            _fh.compressedSize = (-1u32 : stdgo.GoUInt32);
            _fh.uncompressedSize = (-1u32 : stdgo.GoUInt32);
            _fh.readerVersion = (45 : stdgo.GoUInt16);
        } else {
            _fh.compressedSize = (_fh.compressedSize64 : stdgo.GoUInt32);
            _fh.uncompressedSize = (_fh.uncompressedSize64 : stdgo.GoUInt32);
        };
        return _w._writeDataDescriptor();
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter> = _w;
        if (_w._closed) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("zip: write to closed file" : stdgo.GoString)) };
        };
        if (_w._header._raw) {
            return _w._zipw.write(_p);
        };
        _w._crc32.write(_p);
        return _w._rawCount.write(_p);
    }
    @:embedded
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool return __self__._isZip64();
    @:embedded
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):Bool return __self__._hasDataDescriptor();
    @:embedded
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, __0:stdgo._internal.io.fs.Fs_FileMode.FileMode) __self__.setMode(__0);
    @:embedded
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter, __0:stdgo._internal.time.Time_Time.Time) __self__.setModTime(__0);
    @:embedded
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.time.Time_Time.Time return __self__.modTime();
    @:embedded
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter):stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.fileInfo();
}
