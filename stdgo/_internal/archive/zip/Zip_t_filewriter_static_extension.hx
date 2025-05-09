package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_fileWriter_asInterface) class T_fileWriter_static_extension {
    @:keep
    @:tdfield
    static public function _writeDataDescriptor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L567"
        if (!_w._hasDataDescriptor()) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L568"
            return (null : stdgo.Error);
        };
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L576"
        if (_w._isZip64()) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((24 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((16 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = (_buf : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L582"
        _b._uint32((134695760u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L583"
        _b._uint32((@:checkr _w ?? throw "null pointer dereference")._header.fileHeader.cRC32);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L584"
        if (_w._isZip64()) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L585"
            _b._uint64((@:checkr _w ?? throw "null pointer dereference")._header.fileHeader.compressedSize64);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L586"
            _b._uint64((@:checkr _w ?? throw "null pointer dereference")._header.fileHeader.uncompressedSize64);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L588"
            _b._uint32((@:checkr _w ?? throw "null pointer dereference")._header.fileHeader.compressedSize);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L589"
            _b._uint32((@:checkr _w ?? throw "null pointer dereference")._header.fileHeader.uncompressedSize);
        };
        var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._zipw.write(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L592"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L537"
        if ((@:checkr _w ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L538"
            return stdgo._internal.errors.Errors_new_.new_(("zip: file closed twice" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._closed = true;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L541"
        if ((@:checkr _w ?? throw "null pointer dereference")._header._raw) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L542"
            return _w._writeDataDescriptor();
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L544"
        {
            var _err = ((@:checkr _w ?? throw "null pointer dereference")._comp.close() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L545"
                return _err;
            };
        };
        var _fh = (@:checkr (@:checkr _w ?? throw "null pointer dereference")._header ?? throw "null pointer dereference").fileHeader;
        (@:checkr _fh ?? throw "null pointer dereference").cRC32 = (@:checkr _w ?? throw "null pointer dereference")._crc32.sum32();
        (@:checkr _fh ?? throw "null pointer dereference").compressedSize64 = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._compCount ?? throw "null pointer dereference")._count : stdgo.GoUInt64);
        (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._rawCount ?? throw "null pointer dereference")._count : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L554"
        if (_fh._isZip64()) {
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize = (-1u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (-1u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").readerVersion = (45 : stdgo.GoUInt16);
        } else {
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize = ((@:checkr _fh ?? throw "null pointer dereference").compressedSize64 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = ((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L563"
        return _w._writeDataDescriptor();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L526"
        if ((@:checkr _w ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L527"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("zip: write to closed file" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L529"
        if ((@:checkr _w ?? throw "null pointer dereference")._header._raw) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L530"
            return (@:checkr _w ?? throw "null pointer dereference")._zipw.write(_p);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L532"
        (@:checkr _w ?? throw "null pointer dereference")._crc32.write(_p);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L533"
        return (@:checkr _w ?? throw "null pointer dereference")._rawCount.write(_p);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _isZip64( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):Bool return @:_5 __self__._isZip64();
    @:embedded
    @:embeddededffieldsffun
    public static function _hasDataDescriptor( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):Bool return @:_5 __self__._hasDataDescriptor();
    @:embedded
    @:embeddededffieldsffun
    public static function setMode( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter, _0:stdgo._internal.io.fs.Fs_filemode.FileMode):Void return @:_5 __self__.setMode(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setModTime( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter, _0:stdgo._internal.time.Time_time.Time):Void return @:_5 __self__.setModTime(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function mode( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.io.fs.Fs_filemode.FileMode return @:_5 __self__.mode();
    @:embedded
    @:embeddededffieldsffun
    public static function modTime( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.time.Time_time.Time return @:_5 __self__.modTime();
    @:embedded
    @:embeddededffieldsffun
    public static function fileInfo( __self__:stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter):stdgo._internal.io.fs.Fs_fileinfo.FileInfo return @:_5 __self__.fileInfo();
}
