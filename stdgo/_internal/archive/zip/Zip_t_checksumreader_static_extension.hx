package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_checksumReader_asInterface) class T_checksumReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L334"
        return (@:checkr _r ?? throw "null pointer dereference")._rc.close();
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L295"
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L296"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._rc.read(_b);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L299"
        (@:checkr _r ?? throw "null pointer dereference")._hash.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _r ?? throw "null pointer dereference")._nread = ((@:checkr _r ?? throw "null pointer dereference")._nread + ((_n : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L301"
        if (((@:checkr _r ?? throw "null pointer dereference")._nread > (@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader.uncompressedSize64 : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L302"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.archive.zip.Zip_errformat.errFormat };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L304"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L305"
            return { _0 : _n, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L307"
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L308"
            if ((@:checkr _r ?? throw "null pointer dereference")._nread != ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader.uncompressedSize64)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L309"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L311"
            if ((@:checkr _r ?? throw "null pointer dereference")._desr != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L312"
                {
                    var _err1 = (stdgo._internal.archive.zip.Zip__readdatadescriptor._readDataDescriptor((@:checkr _r ?? throw "null pointer dereference")._desr, (@:checkr _r ?? throw "null pointer dereference")._f) : stdgo.Error);
                    if (_err1 != null) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L313"
                        if (stdgo.Go.toInterface(_err1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                        } else {
                            _err = _err1;
                        };
                    } else if ((@:checkr _r ?? throw "null pointer dereference")._hash.sum32() != ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader.cRC32)) {
                        _err = stdgo._internal.archive.zip.Zip_errchecksum.errChecksum;
                    };
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L325"
                if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader.cRC32 != (0u32 : stdgo.GoUInt32)) && ((@:checkr _r ?? throw "null pointer dereference")._hash.sum32() != (@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader.cRC32) : Bool)) {
                    _err = stdgo._internal.archive.zip.Zip_errchecksum.errChecksum;
                };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._err = _err;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L331"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function stat( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_checksumreader.T_checksumReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/reader.go#L291"
        return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo((stdgo.Go.setRef((@:checkr (@:checkr _r ?? throw "null pointer dereference")._f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>)) : stdgo._internal.archive.zip.Zip_t_headerfileinfo.T_headerFileInfo)), _1 : (null : stdgo.Error) };
    }
}
