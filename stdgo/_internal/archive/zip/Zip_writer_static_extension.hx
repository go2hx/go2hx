package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _compressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _method:stdgo.GoUInt16):stdgo._internal.archive.zip.Zip_compressor.Compressor {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var _comp = ((@:checkr _w ?? throw "null pointer dereference")._compressors[_method] ?? (null : stdgo._internal.archive.zip.Zip_compressor.Compressor) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L500"
        if (_comp == null) {
            _comp = stdgo._internal.archive.zip.Zip__compressor._compressor(_method);
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L503"
        return _comp;
    }
    @:keep
    @:tdfield
    static public function registerCompressor( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _method:stdgo.GoUInt16, _comp:stdgo._internal.archive.zip.Zip_compressor.Compressor):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L492"
        if ((@:checkr _w ?? throw "null pointer dereference")._compressors == null) {
            (@:checkr _w ?? throw "null pointer dereference")._compressors = (({
                final x = new stdgo.GoMap.GoIntMap<stdgo._internal.archive.zip.Zip_compressor.Compressor>();
                x.__defaultValue__ = () -> (null : stdgo._internal.archive.zip.Zip_compressor.Compressor);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>) : stdgo.GoMap<stdgo.GoUInt16, stdgo._internal.archive.zip.Zip_compressor.Compressor>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._compressors[_method] = _comp;
    }
    @:keep
    @:tdfield
    static public function copy( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _f:stdgo.Ref<stdgo._internal.archive.zip.Zip_file.File>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var __tmp__ = _f.openRaw(), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L477"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L478"
            return _err;
        };
        var __tmp__ = _w.createRaw((stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").fileHeader) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>)), _fw:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L481"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L482"
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_fw, _r);
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L485"
        return _err;
    }
    @:keep
    @:tdfield
    static public function createRaw( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L443"
        {
            var _err = (_w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L444"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        (@:checkr _fh ?? throw "null pointer dereference").compressedSize = (stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _fh ?? throw "null pointer dereference").compressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (stdgo._internal.archive.zip.Zip__min64._min64((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64, (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoUInt64), _raw : true } : stdgo._internal.archive.zip.Zip_t_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>);
        (@:checkr _w ?? throw "null pointer dereference")._dir = ((@:checkr _w ?? throw "null pointer dereference")._dir.__append__(_h) : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L456"
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeheader._writeHeader(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _h) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L457"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L460"
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__(), ("/" : stdgo.GoString))) {
            (@:checkr _w ?? throw "null pointer dereference")._last = null;
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L462"
            return { _0 : stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter)), _1 : (null : stdgo.Error) };
        };
        var _fw = (stdgo.Go.setRef(({ _header : _h, _zipw : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw) } : stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        (@:checkr _w ?? throw "null pointer dereference")._last = _fw;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L470"
        return { _0 : stdgo.Go.asInterface(_fw), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function createHeader( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L272"
        {
            var _err = (_w._prepare(_fh) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L273"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__()), _utf8Valid1:Bool = __tmp__._0, _utf8Require1:Bool = __tmp__._1;
        var __tmp__ = stdgo._internal.archive.zip.Zip__detectutf8._detectUTF8((@:checkr _fh ?? throw "null pointer dereference").comment?.__copy__()), _utf8Valid2:Bool = __tmp__._0, _utf8Require2:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L294"
        if ((@:checkr _fh ?? throw "null pointer dereference").nonUTF8) {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags & ((((2048 : stdgo.GoUInt16)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt16)) : stdgo.GoUInt16);
        } else if ((((_utf8Require1 || _utf8Require2 : Bool)) && ((_utf8Valid1 && _utf8Valid2 : Bool)) : Bool)) {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags | ((2048 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        (@:checkr _fh ?? throw "null pointer dereference").creatorVersion = (((@:checkr _fh ?? throw "null pointer dereference").creatorVersion & (65280 : stdgo.GoUInt16) : stdgo.GoUInt16) | (20 : stdgo.GoUInt16) : stdgo.GoUInt16);
        (@:checkr _fh ?? throw "null pointer dereference").readerVersion = (20 : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L305"
        if (!(@:checkr _fh ?? throw "null pointer dereference").modified.isZero()) {
            {
                var __tmp__ = stdgo._internal.archive.zip.Zip__timetomsdostime._timeToMsDosTime((@:checkr _fh ?? throw "null pointer dereference").modified?.__copy__());
                (@:checkr _fh ?? throw "null pointer dereference").modifiedDate = @:tmpset0 __tmp__._0;
                (@:checkr _fh ?? throw "null pointer dereference").modifiedTime = @:tmpset0 __tmp__._1;
            };
            var _mbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9).__setNumber32__();
            var _mt = ((@:checkr _fh ?? throw "null pointer dereference").modified.unix() : stdgo.GoUInt32);
            var _eb = ((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L325"
            _eb._uint16((21589 : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L326"
            _eb._uint16((5 : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L327"
            _eb._uint8((1 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L328"
            _eb._uint32(_mt);
            (@:checkr _fh ?? throw "null pointer dereference").extra = ((@:checkr _fh ?? throw "null pointer dereference").extra.__append__(...((_mbuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _ow:stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer), _fw:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter> = (null : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
        var _h = (stdgo.Go.setRef(({ fileHeader : _fh, _offset : ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_t_header.T_header)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L341"
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr _fh ?? throw "null pointer dereference").name?.__copy__(), ("/" : stdgo.GoString))) {
            (@:checkr _fh ?? throw "null pointer dereference").method = (0 : stdgo.GoUInt16);
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags & ((((8 : stdgo.GoUInt16)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt16)) : stdgo.GoUInt16);
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize = (0u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").compressedSize64 = (0i64 : stdgo.GoUInt64);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (0u32 : stdgo.GoUInt32);
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 = (0i64 : stdgo.GoUInt64);
            _ow = stdgo.Go.asInterface((new stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter() : stdgo._internal.archive.zip.Zip_t_dirwriter.T_dirWriter));
        } else {
            (@:checkr _fh ?? throw "null pointer dereference").flags = ((@:checkr _fh ?? throw "null pointer dereference").flags | ((8 : stdgo.GoUInt16)) : stdgo.GoUInt16);
            _fw = (stdgo.Go.setRef(({ _zipw : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _compCount : (stdgo.Go.setRef(({ _w : stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw) } : stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>), _crc32 : stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() } : stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_filewriter.T_fileWriter>);
            var _comp = (_w._compressor((@:checkr _fh ?? throw "null pointer dereference").method) : stdgo._internal.archive.zip.Zip_compressor.Compressor);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L365"
            if (_comp == null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L366"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _comp(stdgo.Go.asInterface((@:checkr _fw ?? throw "null pointer dereference")._compCount));
                (@:checkr _fw ?? throw "null pointer dereference")._comp = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L370"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L371"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
            (@:checkr _fw ?? throw "null pointer dereference")._rawCount = (stdgo.Go.setRef(({ _w : (@:checkr _fw ?? throw "null pointer dereference")._comp } : stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_t_countwriter.T_countWriter>);
            (@:checkr _fw ?? throw "null pointer dereference")._header = _h;
            _ow = stdgo.Go.asInterface(_fw);
        };
        (@:checkr _w ?? throw "null pointer dereference")._dir = ((@:checkr _w ?? throw "null pointer dereference")._dir.__append__(_h) : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_t_header.T_header>>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L378"
        {
            var _err = (stdgo._internal.archive.zip.Zip__writeheader._writeHeader(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), _h) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L379"
                return { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : _err };
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._last = _fw;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L383"
        return { _0 : _ow, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _prepare( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _fh:stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L252"
        if ((({
            final value = (@:checkr _w ?? throw "null pointer dereference")._last;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && !(@:checkr (@:checkr _w ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._closed : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L253"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._last._close() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L254"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L257"
        if (((((@:checkr _w ?? throw "null pointer dereference")._dir.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._dir[(((@:checkr _w ?? throw "null pointer dereference")._dir.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").fileHeader == _fh) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L259"
            return stdgo._internal.errors.Errors_new_.new_(("archive/zip: invalid duplicate FileHeader" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L261"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function create( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_writer.Writer; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        var _header = (stdgo.Go.setRef(({ name : _name?.__copy__(), method : (8 : stdgo.GoUInt16) } : stdgo._internal.archive.zip.Zip_fileheader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L223"
        return _w.createHeader(_header);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L78"
        if ((({
            final value = (@:checkr _w ?? throw "null pointer dereference")._last;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && !(@:checkr (@:checkr _w ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._closed : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L79"
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._last._close() : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L80"
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._last = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L84"
        if ((@:checkr _w ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L85"
            return stdgo._internal.errors.Errors_new_.new_(("zip: writer closed twice" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._closed = true;
        var _start = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L91"
        for (__0 => _h in (@:checkr _w ?? throw "null pointer dereference")._dir) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(46, 46).__setNumber32__();
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L94"
            _b._uint32((33639248u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L95"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.creatorVersion);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L96"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.readerVersion);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L97"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.flags);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L98"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.method);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L99"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedTime);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L100"
            _b._uint16((@:checkr _h ?? throw "null pointer dereference").fileHeader.modifiedDate);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L101"
            _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.cRC32);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L102"
            if ((_h._isZip64() || ((@:checkr _h ?? throw "null pointer dereference")._offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L106"
                _b._uint32((-1u32 : stdgo.GoUInt32));
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L107"
                _b._uint32((-1u32 : stdgo.GoUInt32));
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(28, 28).__setNumber32__();
                var _eb = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L112"
                _eb._uint16((1 : stdgo.GoUInt16));
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L113"
                _eb._uint16((24 : stdgo.GoUInt16));
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L114"
                _eb._uint64((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize64);
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L115"
                _eb._uint64((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize64);
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L116"
                _eb._uint64((@:checkr _h ?? throw "null pointer dereference")._offset);
                (@:checkr _h ?? throw "null pointer dereference").fileHeader.extra = ((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.__append__(...((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L119"
                _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.compressedSize);
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L120"
                _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.uncompressedSize);
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L123"
            _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.name.length : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L124"
            _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra.length : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L125"
            _b._uint16(((@:checkr _h ?? throw "null pointer dereference").fileHeader.comment.length : stdgo.GoUInt16));
            _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L127"
            _b._uint32((@:checkr _h ?? throw "null pointer dereference").fileHeader.externalAttrs);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L128"
            if (((@:checkr _h ?? throw "null pointer dereference")._offset > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L129"
                _b._uint32((-1u32 : stdgo.GoUInt32));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L131"
                _b._uint32(((@:checkr _h ?? throw "null pointer dereference")._offset : stdgo.GoUInt32));
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L133"
            {
                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L134"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L136"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _h ?? throw "null pointer dereference").fileHeader.name?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L137"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L139"
            {
                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._cw.write((@:checkr _h ?? throw "null pointer dereference").fileHeader.extra), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L140"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L142"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _h ?? throw "null pointer dereference").fileHeader.comment?.__copy__()), __4:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L143"
                    return _err;
                };
            };
        };
        var _end = ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count : stdgo.GoInt64);
        var _records = ((@:checkr _w ?? throw "null pointer dereference")._dir.length : stdgo.GoUInt64);
        var _size = ((_end - _start : stdgo.GoInt64) : stdgo.GoUInt64);
        var _offset = (_start : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L152"
        {
            var _f = ((@:checkr _w ?? throw "null pointer dereference")._testHookCloseSizeOffset : (stdgo.GoUInt64, stdgo.GoUInt64) -> Void);
            if (_f != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L153"
                _f(_size, _offset);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L156"
        if ((((_records >= (65535i64 : stdgo.GoUInt64) : Bool) || (_size >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool) || (_offset >= (4294967295i64 : stdgo.GoUInt64) : Bool) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(76, 76).__setNumber32__();
            var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L161"
            _b._uint32((101075792u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L162"
            _b._uint64((44i64 : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L163"
            _b._uint16((45 : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L164"
            _b._uint16((45 : stdgo.GoUInt16));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L165"
            _b._uint32((0u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L166"
            _b._uint32((0u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L167"
            _b._uint64(_records);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L168"
            _b._uint64(_records);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L169"
            _b._uint64(_size);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L170"
            _b._uint64(_offset);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L173"
            _b._uint32((117853008u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L174"
            _b._uint32((0u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L175"
            _b._uint64((_end : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L176"
            _b._uint32((1u32 : stdgo.GoUInt32));
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L178"
            {
                var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L179"
                    return _err;
                };
            };
            _records = (65535i64 : stdgo.GoUInt64);
            _size = (4294967295i64 : stdgo.GoUInt64);
            _offset = (4294967295i64 : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(22, 22).__setNumber32__();
        var _b = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L192"
        _b._uint32((101010256u32 : stdgo.GoUInt32));
        _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_t_writebuf.T_writeBuf);
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L194"
        _b._uint16((_records : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L195"
        _b._uint16((_records : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L196"
        _b._uint32((_size : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L197"
        _b._uint32((_offset : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L198"
        _b._uint16(((@:checkr _w ?? throw "null pointer dereference")._comment.length : stdgo.GoUInt16));
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L199"
        {
            var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._cw.write((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L200"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L202"
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface((@:checkr _w ?? throw "null pointer dereference")._cw), (@:checkr _w ?? throw "null pointer dereference")._comment?.__copy__()), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L203"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L206"
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>).flush();
    }
    @:keep
    @:tdfield
    static public function setComment( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _comment:stdgo.GoString):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L68"
        if (((_comment.length) > (65535 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L69"
            return stdgo._internal.errors.Errors_new_.new_(("zip: Writer.Comment too long" : stdgo.GoString));
        };
        (@:checkr _w ?? throw "null pointer dereference")._comment = _comment?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L72"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L62"
        return (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._w) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>)) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>).flush();
    }
    @:keep
    @:tdfield
    static public function setOffset( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer>, _n:stdgo.GoInt64):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> = _w;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L53"
        if ((@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count != ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L54"
            throw stdgo.Go.toInterface(("zip: SetOffset called after data was written" : stdgo.GoString));
        };
        (@:checkr (@:checkr _w ?? throw "null pointer dereference")._cw ?? throw "null pointer dereference")._count = _n;
    }
}
