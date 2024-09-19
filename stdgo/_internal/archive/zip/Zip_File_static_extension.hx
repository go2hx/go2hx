package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.File_asInterface) class File_static_extension {
    @:keep
    static public function _findBodyOffset( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = _f;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30, ...[for (i in 0 ... 30) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _f._zipr.readAt((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _f._headerOffset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
            };
        };
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        {
            var _sig = (_b._uint32() : stdgo.GoUInt32);
            if (_sig != ((67324752u32 : stdgo.GoUInt32))) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.archive.zip.Zip_errFormat.errFormat };
            };
        };
        _b = (_b.__slice__((22 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_readBuf.T_readBuf);
        var _filenameLen = (_b._uint16() : stdgo.GoInt);
        var _extraLen = (_b._uint16() : stdgo.GoInt);
        return { _0 : ((((30 : stdgo.GoInt) + _filenameLen : stdgo.GoInt) + _extraLen : stdgo.GoInt) : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function openRaw( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):{ var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_Reader.Reader), _1 : _err };
        };
        var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset : stdgo.GoInt64), (_f.fileHeader.compressedSize64 : stdgo.GoInt64));
        return { _0 : stdgo.Go.asInterface(_r), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function open( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):{ var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = _f;
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : _err };
        };
        if (stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_f.fileHeader.name?.__copy__(), ("/" : stdgo.GoString))) {
            if (_f.fileHeader.uncompressedSize64 != ((0i64 : stdgo.GoUInt64))) {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader(stdgo._internal.archive.zip.Zip_errFormat.errFormat) : stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>)), _1 : (null : stdgo.Error) };
            } else {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader(stdgo._internal.io.Io_eof.eof) : stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader>)), _1 : (null : stdgo.Error) };
            };
        };
        var _size = (_f.fileHeader.compressedSize64 : stdgo.GoInt64);
        var _r = stdgo._internal.io.Io_newSectionReader.newSectionReader(_f._zipr, (_f._headerOffset + _bodyOffset : stdgo.GoInt64), _size);
        var _dcomp = (_f._zip._decompressor(_f.fileHeader.method) : stdgo._internal.archive.zip.Zip_Decompressor.Decompressor);
        if (_dcomp == null) {
            return { _0 : (null : stdgo._internal.io.Io_ReadCloser.ReadCloser), _1 : stdgo._internal.archive.zip.Zip_errAlgorithm.errAlgorithm };
        };
        var _rc:stdgo._internal.io.Io_ReadCloser.ReadCloser = _dcomp(stdgo.Go.asInterface(_r));
        var _desr:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        if (_f._hasDataDescriptor()) {
            _desr = stdgo.Go.asInterface(stdgo._internal.io.Io_newSectionReader.newSectionReader(_f._zipr, ((_f._headerOffset + _bodyOffset : stdgo.GoInt64) + _size : stdgo.GoInt64), (16i64 : stdgo.GoInt64)));
        };
        _rc = stdgo.Go.asInterface((stdgo.Go.setRef(({ _rc : _rc, _hash : stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE(), _f : _f, _desr : _desr } : stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_checksumReader.T_checksumReader>));
        return { _0 : _rc, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function dataOffset( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File> = _f;
        var _offset = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return { _0 : (_f._headerOffset + _bodyOffset : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:embedded
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_File.File):Bool return __self__._isZip64();
    @:embedded
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_File.File):Bool return __self__._hasDataDescriptor();
    @:embedded
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_File.File, __0:stdgo._internal.io.fs.Fs_FileMode.FileMode) __self__.setMode(__0);
    @:embedded
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_File.File, __0:stdgo._internal.time.Time_Time.Time) __self__.setModTime(__0);
    @:embedded
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileMode.FileMode return __self__.mode();
    @:embedded
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.time.Time_Time.Time return __self__.modTime();
    @:embedded
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_File.File):stdgo._internal.io.fs.Fs_FileInfo.FileInfo return __self__.fileInfo();
}
