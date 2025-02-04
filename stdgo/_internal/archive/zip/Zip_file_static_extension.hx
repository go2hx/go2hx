package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function _findBodyOffset( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = _f;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(30, 30).__setNumber32__();
        {
            var __tmp__ = (@:checkr _f ?? throw "null pointer dereference")._zipr.readAt((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _f ?? throw "null pointer dereference")._headerOffset), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : _err };
            };
        };
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        {
            var _sig = (@:check2 _b._uint32() : stdgo.GoUInt32);
            if (_sig != ((67324752u32 : stdgo.GoUInt32))) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.archive.zip.Zip_errformat.errFormat };
            };
        };
        _b = (_b.__slice__((22 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_readbuf.T_readBuf);
        var _filenameLen = (@:check2 _b._uint16() : stdgo.GoInt);
        var _extraLen = (@:check2 _b._uint16() : stdgo.GoInt);
        return { _0 : ((((30 : stdgo.GoInt) + _filenameLen : stdgo.GoInt) + _extraLen : stdgo.GoInt) : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function openRaw( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):{ var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = _f;
        var __tmp__ = @:check2r _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_reader.Reader), _1 : _err };
        };
        var _r = stdgo._internal.io.Io_newsectionreader.newSectionReader((@:checkr _f ?? throw "null pointer dereference")._zipr, ((@:checkr _f ?? throw "null pointer dereference")._headerOffset + _bodyOffset : stdgo.GoInt64), ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 : stdgo.GoInt64));
        return { _0 : stdgo.Go.asInterface(_r), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function open( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = _f;
        var __tmp__ = @:check2r _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _f ?? throw "null pointer dereference").fileHeader.name?.__copy__(), ("/" : stdgo.GoString))) {
            if ((@:checkr _f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 != ((0i64 : stdgo.GoUInt64))) {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader(stdgo._internal.archive.zip.Zip_errformat.errFormat) : stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader>)), _1 : (null : stdgo.Error) };
            } else {
                return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader(stdgo._internal.io.Io_eof.eOF) : stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_dirreader.T_dirReader>)), _1 : (null : stdgo.Error) };
            };
        };
        var _size = ((@:checkr _f ?? throw "null pointer dereference").fileHeader.compressedSize64 : stdgo.GoInt64);
        var _r = stdgo._internal.io.Io_newsectionreader.newSectionReader((@:checkr _f ?? throw "null pointer dereference")._zipr, ((@:checkr _f ?? throw "null pointer dereference")._headerOffset + _bodyOffset : stdgo.GoInt64), _size);
        var _dcomp = (@:check2r (@:checkr _f ?? throw "null pointer dereference")._zip._decompressor((@:checkr _f ?? throw "null pointer dereference").fileHeader.method) : stdgo._internal.archive.zip.Zip_decompressor.Decompressor);
        if (_dcomp == null) {
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm };
        };
        var _rc:stdgo._internal.io.Io_readcloser.ReadCloser = _dcomp(stdgo.Go.asInterface(_r));
        var _desr:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        if (@:check2r _f._hasDataDescriptor()) {
            _desr = stdgo.Go.asInterface(stdgo._internal.io.Io_newsectionreader.newSectionReader((@:checkr _f ?? throw "null pointer dereference")._zipr, (((@:checkr _f ?? throw "null pointer dereference")._headerOffset + _bodyOffset : stdgo.GoInt64) + _size : stdgo.GoInt64), (16i64 : stdgo.GoInt64)));
        };
        _rc = stdgo.Go.asInterface((stdgo.Go.setRef(({ _rc : _rc, _hash : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE(), _f : _f, _desr : _desr } : stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>));
        return { _0 : _rc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function dataOffset( _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File> = _f;
        var _offset = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _f._findBodyOffset(), _bodyOffset:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : ((@:checkr _f ?? throw "null pointer dereference")._headerOffset + _bodyOffset : stdgo.GoInt64), _1 : (null : stdgo.Error) };
            _offset = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_file.File):Bool return @:_5 __self__._isZip64();
    @:embedded
    @:embeddededffieldsffun
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_file.File):Bool return @:_5 __self__._hasDataDescriptor();
    @:embedded
    @:embeddededffieldsffun
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_file.File, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void return @:_5 __self__.setMode(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_file.File, _0:stdgo._internal.time.Time_time.Time):Void return @:_5 __self__.setModTime(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_file.File):stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_5 __self__.fileInfo();
}
